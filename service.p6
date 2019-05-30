use Cro::HTTP::Log::File;
use Cro::HTTP::Server;
use Routes;

my Cro::Service $http = Cro::HTTP::Server.new(
    http => <1.1 2>,
    host => %*ENV<INGREDIENT_GURU_HOST> ||
        die("Missing INGREDIENT_GURU_HOST in environment"),
    port => %*ENV<INGREDIENT_GURU_PORT> ||
        die("Missing INGREDIENT_GURU_PORT in environment"),
    tls => %(
        private-key-file => %*ENV<INGREDIENT_GURU_TLS_KEY> ||
            %?RESOURCES<fake-tls/server-key.pem> || "resources/fake-tls/server-key.pem",
        certificate-file => %*ENV<INGREDIENT_GURU_TLS_CERT> ||
            %?RESOURCES<fake-tls/server-crt.pem> || "resources/fake-tls/server-crt.pem",
    ),
    application => routes(),
    after => [
        Cro::HTTP::Log::File.new(logs => $*OUT, errors => $*ERR)
    ]
);
$http.start;
say "Listening at https://%*ENV<INGREDIENT_GURU_HOST>:%*ENV<INGREDIENT_GURU_PORT>";
react {
    whenever signal(SIGINT) {
        say "Shutting down...";
        $http.stop;
        done;
    }
}
