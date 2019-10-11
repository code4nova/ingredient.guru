#unit module conv;
module HTML-P6::Basic {

    sub interpretBasic($text, %dict) is export {
        my $start;
        my $end;
        my $varstring;
        my $out = $text;

        while index($out, '{{') {
            $start =  2 + index $out, '{{';
            $end = -1 + index $out, '}}';
            $varstring = substr $out, $start..$end;
            $out = substr($out, 0..$start - 3)~%dict{$varstring}~substr($out, $end + 3..*);
        }
        return $out;
    }

}
