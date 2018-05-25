#!/usr/bin/env perl6

use v6;

sub multiple-sequence( $multiplicand, $number ) {
    $multiplicand, $multiplicand*2 … * > $number+1;
}

for < 3 7 11 13 19 > -> $n {
    say 876 ∈ multiple-sequence( $n, 876 );
}
