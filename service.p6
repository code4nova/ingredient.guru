use Cro::HTTP::Server;
use Cro::HTTP::Router;

my $application = route {
    get -> {
        content 'text/html', 'Home';
    }
    post -> 'poster' {
        content 'text/html', 'Post request to /poster page';
    }
    get -> 'articles', $author, $name {
        content 'text/html', "<h1>{$name}<h1><em>By {$author}</em>";
    }
}

# Create the HTTP service object
my Cro::Service $service = Cro::HTTP::Server.new(
    :host('localhost'), :port(2314), :$application
);

# Run it
$service.start;

# Cleanly shut down on Ctrl-C
react whenever signal(SIGINT) {
    $service.stop;
    exit;
}