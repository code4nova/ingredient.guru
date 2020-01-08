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

    #Required for Testing Succesful Login
    #$sth = $dbh.prepare(q:to/STATEMENT/);
        #INSERT INTO accounts (username, email, password, date, code, verified)
        #VALUES ( ?, ?, ?, ?, ?, ? )
        #STATEMENT
    
    #$sth.execute("username", "test@test.com", "2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b", "10/14/17", "102842", "FALSE");


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

sub login($username, $password) is export {
    my $hashlogin = sha256-hex $password.encode: 'utf8-c8';

        #Select Statement to find username
        $sth = $dbh.prepare(q:to/STATEMENT/);
            select username from accounts WHERE username = (?) and password = (?) and verified = "TRUE"
            STATEMENT

        #Executes Select statement
        return $sth.execute($username, $hashlogin);
}