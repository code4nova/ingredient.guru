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
            request-body -> (:$uname, :$passwd) {
            my %inputdict;
            %inputdict<usha> = sha256-hex $uname;
            %inputdict<psha> = sha256-hex $passwd;
            %inputdict<password> = $passwd;
            %inputdict<username> = $uname;
            #my %inputdict = username => $uname, password => $passwd, usha => sha256-hex $uname#, ass => $passwd;#, psha => sha256-hex $passwd;
            my $body = 'static/login-post.html'.IO.slurp;
            content 'text/html', interpretBasic $body, %inputdict;
            }
        }
        post -> 'form', 'post' {
            request-body -> (:$namevar) {
                content 'text/html', "Guess what? you came through the POST method, "~$namevar~"!";
            }
        }
        get -> 'sha', :$a {
            with $a {content 'text/html', sha256-hex "$a"}
            else {content 'text/html', ":/"}
        }
    }
}
