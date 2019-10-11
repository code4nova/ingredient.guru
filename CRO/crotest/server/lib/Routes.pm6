use Cro::HTTP::Router;
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
        post -> 'posts' {
            request-body -> (:$username,:$email,:$password) {
                
                #SQL Insert Statment
                $sth = $dbh.prepare(q:to/STATEMENT/);
                    INSERT INTO accounts (username, email, password, date)
                    VALUES ( ?, ?, ?, ? )
                    STATEMENT

                #Retrieves Date and Time
                my $date = Str(DateTime.now);

                #Inputs Data Into Database Using Prepare Statement (Outputs 1 for one line added, Outputs 0 for error)
                my $count = $sth.execute($username, $email, $password, $date);

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
    }
}

