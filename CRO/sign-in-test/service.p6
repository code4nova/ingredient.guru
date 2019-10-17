use Cro::HTTP::Log::File;
use Cro::HTTP::Server;
use Routes;

my Cro::Service $http = Cro::HTTP::Server.new(
    http => <1.1>,
    host => %*ENV<CRO_SERVER_HOST> ||
        die("Missing CRO_SERVER_HOST in environment"),
    port => %*ENV<CRO_SERVER_PORT> ||
        die("Missing CRO_SERVER_PORT in environment"),
    application => routes(),
    after => [
        Cro::HTTP::Log::File.new(logs => $*OUT, errors => $*ERR)
    ]
);
$http.start;
say "Listening at http://%*ENV<CRO_SERVER_HOST>:%*ENV<CRO_SERVER_PORT>";
react {
    whenever signal(SIGINT) {
        say "Shutting down...";
        $http.stop;
        done;
    }
}
