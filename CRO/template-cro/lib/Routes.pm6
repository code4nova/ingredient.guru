#Route
use HTML-P6::Basic;
use Cro::HTTP::Router;

sub routes() is export {
    route {
        get -> {
            static 'static/home.html';
        }
        get -> 'test1' {
            static 'static/test1.html';
        }
        get -> 'test2', $name {
            content 'text/html', 'hi '~$name~'!';
        }
        get -> 'test3', :$name {
            with $name {content 'text/html', 'hi '~$name~'!'}
            else {content 'text/html', "silly goose you don't have a name!"}
        }
        get -> 'form' {
            static 'static/form.html';
        }
        post -> 'form', 'post' {
            request-body -> (:$namevar) {
                content 'text/html', "Guess what? you came through the POST method, "~$namevar~"!";
            }
        }
        get -> 'module-test', :$prefix, :$fname, :$lname, :$age {
            my %inputdict = prefix => $prefix, fname => $fname, lname => $lname, age => $age;
            my $body = 'static/mt.html'.IO.slurp;
            content 'text/html', interpretBasic $body, %inputdict;
        
        }
        get -> 'hidden', $super {
            my $body = q:s:to/END-HTML/;
                <h2> Html is a bad thing </h2>
                <h1> $super </h1>
                <br>
                <h2> Thats pretty good ;) </h2>
                END-HTML

            content 'text/html', $body; 
        }
        get -> 'hidden2', $super {
            #content 'text/html', Q:s/"static/hidden.html".IO.slurp/;
            my $body = 'static/hidden.html'.IO.slurp;
            content 'text/html', '<h1>\qq[$super]</h1>'; 
            #content 'text/html', $body; 
        }
    }
}
