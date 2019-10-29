use Cro::HTTP::Router;
use Digest::SHA256::Native;
use DBIish;
use Cro::HTTP::Cookie;

#Opens Connection
my $dbh = DBIish.connect( 'SQLite', database => '../ingredient.db' );

#Create SQL Table If Not There
my $sth = $dbh.do(q:to/STATEMENT/);
    CREATE TABLE IF NOT EXISTS accounts (
    ID          INTEGER PRIMARY KEY AUTOINCREMENT,
    username    TEXT type UNIQUE,
    email       TEXT,
    password    TEXT,
    date        TEXT
    )
    STATEMENT

$sth = $dbh.do(q:to/STATEMENT/);
    CREATE TABLE IF NOT EXISTS tokens (
    user        PRIMARY KEY,
    hash        TEXT
    )
    STATEMENT

sub routes() is export {
    route {

        #Static Page HTML
        get -> {
            static 'static/index.html';
        }   
        
        get -> 'register' {
            static 'static/register.html';
        }
        #Retrieve Info From register.html   
        post -> 'register', 'post' {
            request-body -> (:$username,:$email,:$password) {
                
                #SQL Insert Statment
                $sth = $dbh.prepare(q:to/STATEMENT/);
                    INSERT INTO accounts (username, email, password, date)
                    VALUES ( ?, ?, ?, ? )
                    STATEMENT
                
                #Hash Password
                my $hashpassword = sha256-hex $password.encode: 'utf8-c8';

                #Retrieves Date and Time
                my $date = Str(DateTime.now);

                #Inputs Data Into Database Using Prepare Statement (Outputs 1 for one line added, Outputs 0 for error)
                my $count = $sth.execute($username, $email, $hashpassword, $date);
                
                $sth = $dbh.prepare(q:to/STATEMENT/);
                    insert into tokens (user, hash) 
                    VALUES (?,?)
                    STATEMENT
                
                $sth.execute($username,"");

                #Errors (i.e. Username Already Exists)
                CATCH {
                    default {
                       say 'Error caught:  .message';
                       content 'text/html','USERNAME ALREADY EXITS';
                     }
                     return;
                }

                #No Problems | Account Created
                if $count == 1 {
                    content 'text/html','SUCCESS';
                }
            }
        }
        #Authentication
        get -> 'login', :$authtoken is cookie {
            with $authtoken {
                $sth = $dbh.prepare(q:to/STATEMENT/);
                    select user from tokens where hash = (?)
                    STATEMENT 
                    
                $sth.execute($authtoken);
                my $result = $sth.allrows;

                if $result.elems >= 1 {
                    content 'text/html','Successful Login: Welcome' ~ " " ~$result[0];
                }else {
                    content 'text/html', 'BAD Boi';
                }
            }
            else {static 'static/signin.html'}
        }
        post -> 'login' , 'authenticate' {
            request-body -> (:$userlog,:$passlog) {
            
                #Hash Password At Login
                my $hashlogin = sha256-hex $passlog.encode: 'utf8-c8';

                #Select Statement to find username
                $sth = $dbh.prepare(q:to/STATEMENT/);
                    select username from accounts WHERE username = (?)
                    STATEMENT

                #Executes Select statement
                $sth.execute($userlog);

                #Stores the result
                my $result = $sth.allrows;

                #Starts to check password if a username is found 
                if $result.elems >= 1 {
                    $sth = $dbh.prepare(q:to/STATEMENT/);
                        select password from accounts WHERE password = (?)
                        STATEMENT
                    $sth.execute($hashlogin);

                    #Stores the returned hash from database
                    my $hash = $sth.allrows[0]; 

                    #Checks if hashs match and gives webpage response
                    if $hashlogin eq $hash {
                        #at stands for authentication token
                        my $time = DateTime.now.later(:5minutes);
                        my $token = sha256-hex $time.say ~ $userlog;
                        set-cookie 'authtoken', $token, expires => $time;
                        
                        $sth = $dbh.prepare(q:to/STATEMENT/);
                            UPDATE tokens 
                            SET hash = (?)
                            WHERE user = (?)
                            STATEMENT

                        $sth.execute($token,$userlog);

                        content 'text/html','Login Successful';

                    } else {
                        content 'text/html', "Login Failed";
                    }
                #Completes first if statment
                } else {
                        content 'text/html','Login Failed';
                }
            }
        }
    }
}

