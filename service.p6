use Cro::HTTP::Log::File;
use Cro::HTTP::Server;
use Routes;

my Cro::Service $http = Cro::HTTP::Server.new(
    http => <1.1>,
    host => %*ENV<INGREDIENT_GURU_HOST> ||
        die("Missing INGREDIENT_GURU_HOST in environment"),
    port => %*ENV<INGREDIENT_GURU_PORT> ||
        die("Missing INGREDIENT_GURU_PORT in environment"),
    application => routes(),
    after => [
        Cro::HTTP::Log::File.new(logs => $*OUT, errors => $*ERR)
    ]
);
$http.start;
say "Listening at http://%*ENV<INGREDIENT_GURU_HOST>:%*ENV<INGREDIENT_GURU_PORT>";
react {
    whenever signal(SIGINT) {
        say "Shutting down...";
        $http.stop;
        done;
    }
}
