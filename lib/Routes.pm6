use Cro::HTTP::Router;
use JSON::Tiny;
use DB::Pg;

sub routes() is export {
    route {

        # your basic homepage
        get -> {
            content 'text/html', "<h1> ingredient.guru </h1>";
        }

        # respond immediately in json to variables passed in
        get -> 'jsonify', $key, $value {
            my %output;
            %output{ $key } = $value;
            %output{ 'DB_PORT' } =  %*ENV<DB_PORT>;
            content 'application/json', to-json %output;
        }

        # put something in a database
        post -> 'account' {

            request-body -> ( 
                :$username,
                :$password,
                :$email,
                *%rest 
            ) {

                # you wouldn't normally do this here, but...
                my $conninfo = join " ",
                    ( 'dbname=' ~ ( %*ENV<DB_NAME> || die( "missing DB_NAME in environment" ) ) ),
                    ( "host=$_" with %*ENV<DB_HOST> ),
                    ( "port=$_" with  %*ENV<DB_PORT> ),
                    ( "user=$_" with %*ENV<DB_USER> ),
                    ( "password=$_" with %*ENV<DB_PASSWORD> );
                my $db = DB::Pg.new( :$conninfo );

                # insert the new item (there is no error checking yet)
                $db.query('
                    insert into account 
                        (username,password,email,created_on)
                    values 
                        ($1,$2,$3,$4)', 
                    $username,
                    $password,
                    $email,
                    DateTime.new(now)
                );

                # now let's just get everything we've got and spit it out
                my %output = $db.query('select user_id,username,email from account').hashes;
                created 'account', 'application/json', to-json %output;

            }

        }

    }

}
