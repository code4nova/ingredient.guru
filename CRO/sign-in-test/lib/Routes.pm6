#Route
use HTML-P6::Basic;
use Cro::HTTP::Router;
use Digest::SHA256::Native;

sub routes() is export {
    route {
        get -> {
            static 'static/home.html';
        }
        get -> 'login' {
            static 'static/login.html';
        }
        post -> 'login', 'auth'{
            request-body -> (:$uname, :$passwd){
            my %inputdict = username => $uname, password => $passwd;
            my $body = 'static/login-post.html'.IO.slurp;
            content 'text/html', interpretBasic $body, %inputdict;
            }
        }
        post -> 'form', 'post' {
            request-body -> (:$namevar) {
                content 'text/html', "Guess what? you came through the POST method, "~$namevar~"!";
            }
        }
        get -> 'module-test', :$prefix, :$fname, :$lname, :$age {
            my %inputdict = (prefix => $prefix, 
                fname => sha256-hex $fname, 
                lname => $lname, 
                age => $age,
                fh => $fname,
                lh => sha256-hex($lname)
            );
            say %inputdict<fh>;
            my $body = 'static/mt.html'.IO.slurp;
            content 'text/html', interpretBasic $body, %inputdict;
        
        }
    }
}
