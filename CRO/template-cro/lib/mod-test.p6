use lib 'dev';
use HTML-P6::Basic;

my %silly = prefix => 'Mr', fname => 'bob';
my $raw = 'test.lang'.IO.slurp;
say html_var $raw, %silly;
