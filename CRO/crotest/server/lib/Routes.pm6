use Cro::HTTP::Router;
use Digest::SHA256::Native;
use DBIish;

### Attributes to pass to DBI->connect() to disable automatic 
### error checking
my %attr = (
    database => '../ingredient.db', 
    PrintError => 1, 
    RaiseError => 0,
);
    
#Opens Connection
my $dbh = DBIish.connect( 'SQLite', database => '../ingredient.db' );

#Create SQL Table
my $sth = $dbh.do(q:to/STATEMENT/);
    CREATE TABLE IF NOT EXISTS accounts (
    ID          INTEGER PRIMARY KEY AUTOINCREMENT,
    username    TEXT type UNIQUE,
    email       TEXT,
    password    TEXT,
    date        TEXT
    )
    STATEMENT

#$dbh.dispose;


sub routes() is export {
    route {

        #Static Page HTML
        get -> {
            static 'static/index.html'
        }   

        #Website Paths
        get -> 'static', *@path {
            static 'static', @path;
        }
        
        #Retrieve Info From register.html   
        post -> 'register' {
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
        post -> 'login' {
            #Retrieving Login Variables
            request-body -> (:$userlog,:$passlog) {
            
                #Hash Password At Login
                my $hashlogin = sha256-hex $passlog.encode: 'utf8-c8';

                #SQL searches for USERNAME
                $sth = $dbh.prepare(q:to/STATEMENT/);
                    select username from accounts WHERE username = (?)
                    STATEMENT

                #Checks for Username Inputted by User
                $sth.execute($userlog);
                my $result = $sth.allrows;
                if $result.elems >= 1 {
                    $sth = $dbh.prepare(q:to/STATEMENT/);
                        select password from accounts WHERE password = (?)
                        STATEMENT
                    $sth.execute($hashlogin);

                    my $hash = $sth.allrows[0]; 

                    if $hashlogin eq $hash {
                        content 'text/html',"Login Successful";
                    }else {
                        content 'text/html', "Incorrect Password";
                    }
                } else {
                        content 'text/html','Login Failed';
                        }
                
            }
        }
    }
}

