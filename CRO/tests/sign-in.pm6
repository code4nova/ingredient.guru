#Import Modules 
use Digest::SHA256::Native;
use DBIish;
use Email::Valid;
use Net::SMTP;


#Test Database
my $dbh = DBIish.connect( 'SQLite', database => 'test.db' );
my $sth = $dbh.do(q:to/STATEMENT/);
    CREATE TABLE IF NOT EXISTS accounts (
    ID          INTEGER PRIMARY KEY AUTOINCREMENT,
    username    TEXT type UNIQUE,
    email       TEXT type UNIQUE,
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

$sth = $dbh.do(q:to/STATEMENT/);
    CREATE TABLE IF NOT EXISTS password_recovery (
        email   TEXT type UNIQUE,
        token   TEXT type UNIQUE,
        expired    TEXt 
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
    return $sth.execute($username, $email, $hashpassword, $date, $code, "TRUE");
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

sub account_exists($email) is export {
    #Search to see if Email Exists
    $sth = $dbh.prepare(q:to/STATEMENT/);
            select email from accounts WHERE email = (?)
            STATEMENT

    return $sth.execute($email);
}

sub add_recovery($email) is export {
     #Add Entry to Recover Table
    $sth = $dbh.prepare(q:to/STATEMENT/);
            INSERT INTO password_recovery (email, token, expired)
            VALUES (?, ?, ?)
            STATEMENT
    
    #Generate Random Crap | Hopefully wont generate same thing otherwise big error.
    my $token = ("a".."z","A".."Z",0..9).flat.roll(22).join;

    #Get Date and Add 48 Hours
    my $date = DateTime.now.later(:2days).Str;

    return $sth.execute($email, $token, $date);
}
   
