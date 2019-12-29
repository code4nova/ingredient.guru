#Defines the Module Name. Make sure the file extension is .pm6
unit module tools;

#Rememeber to include "is export" after the first line in the function otherwise an error will occur.
sub avg($n1, $n2) is export {
    my $add = $n1 + $n2;
    my $avg = $add / 2;
    return $avg;
}
