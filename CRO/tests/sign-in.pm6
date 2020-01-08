#Import Modules 
unit module sign-in;
use Digest::SHA256::Native;
use DBIish;
use Email::Valid;


#Test Database
my $dbh = DBIish.connect( 'SQLite', database => 'test.db' );
my $sth = $dbh.do(q:to/STATEMENT/);
    CREATE TABLE IF NOT EXISTS accounts (
    ID          INTEGER PRIMARY KEY AUTOINCREMENT,
    username    TEXT type UNIQUE,
    email       TEXT,
    password    TEXT,
    date        TEXT,
    code	    INT,
    verified	TEXT
    )
    STATEMENT

sub account-made($username, $email, $password) is export {
    #SQL Insert Statment
        $sth = $dbh.prepare(q:to/STATEMENT/);
            INSERT INTO accounts (username, email, password, date, code, verified)
            VALUES ( ?, ?, ?, ?, ?, ? )
            STATEMENT
        
    #Hash Password
    my $hashpassword = sha256-hex $password.encode: 'utf8-c8';

    #Retrieves Date and Time
    my $date = Str(DateTime.now);

    #Generate Random 6 Digit Code
    my $code = (100000^..999999).pick;
    
    #Inputs Data Into Database Using Prepare Statement (Outputs 1 for one line added, Outputs 0 for error)
    return $sth.execute($username, $email, $hashpassword, $date, $code, "FALSE");
}

sub email-valid($input) is export {
    my $email = Email::Valid.new(:simple);
    
    if $email.validate($input) {
        return True;
    }
    else {
        return False;
    }
}

