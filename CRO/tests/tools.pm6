unit module tools;
  
sub avg($n1, $n2) is export {
    my $add = $n1 + $n2;
    my $avg = $add / 2;
    return $avg;
}
