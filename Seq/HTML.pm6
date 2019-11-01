# module Seq::HTML {}

class Model {
    has $.top is default('No Top') is rw;
    has $.body is default('') is rw;
    has $.bot is default('No Bot') is rw;

    method say() { $.top~$.body~$.bot }

    method set-top($string) { $.top = $string }

    method add-list(@vars) {
        #my @elems = ['happy','sad','odd','unique','fencing'];
        #say foo @elems;
        my $out = '<ul>';
        loop (my $i = 0; $i < @vars.elems; $i++) {
            $out = $out ~ "<li> {@vars[$i]} </li>";
        }
        $out = $out ~ '</ul>';
        $.body = $.body ~ $out;
    }

}


my $foo = Model.new();
$foo.add-list([1,2,3,5,6,7]);
$foo.set-top(q:to/END/);
    Nice top here, aint it?
    END
say $foo.say;
