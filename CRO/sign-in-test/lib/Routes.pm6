#Route
use HTML-P6::Basic;
use Cro::HTTP::Router;
use Digest::SHA256::Native;
use Cro::HTTP::Client;
use Cro::HTTP::Client::CookieJar;
use Cro::HTTP::Response;
use Cro::HTTP::Request;
use Cro::HTTP::Cookie;

#my $jar = Cro::HTTP::Client::CookieJar.new;
#my $client = Cro::HTTP::Client.new(cookie-jar => $jar, base-uri => 'http://localhost:20000');
#my $client = Cro::HTTP::Client.new(base-uri => 'http://localhost:20000');
#$client.cookie-jar => $jar;
#my $resp = Cro::HTTP::Response.new;
#my $client = Cro::HTTP::Client.new(:cookie-jar);
#say "Cookies: "~$resp.cookies.perl~' |}';
#my $resp = await $client.get('/login');
#$jar.add-cookie($c);

my $jar = Cro::HTTP::Client::CookieJar.new;
my $client = Cro::HTTP::Client.new(cookie-jar => $jar);
sub routes() is export {
    route {
        get -> {
            static 'static/home.html';
        }
        get -> 'client', $val {
            my $time = DateTime.now.later(:5minutes);
            my $c = Cro::HTTP::Cookie.new(name => "happy-cookie", value => $val, expires => $time);
            my $resp = $client.get("http://localhost:20000/cookies");
            $jar.add-cookie($c);
            content 'text/html' , "* {$jar.contents} *";
        }
        get -> 'client2'{
            
        }
        get -> 'cookies' , :$set ,:$val {
            my $req = Cro::HTTP::Request.new(path => '/cookies');
            if $set {
                my $time = DateTime.now.later(:5minutes);
                my $c = Cro::HTTP::Cookie.new(name => "testc", value => $val, expires => $time);
                $req.add-cookie($c);
            }
            if $req.has-cookie("testc") {
                content 'text/html' , 'Value: '~$req.cookie-value("testc");
            } else {
                content 'text/html' , "Cookie not found";
            }
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
