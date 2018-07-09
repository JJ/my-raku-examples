#!/usr/bin/env perl6

use v6;

proto how-many(|) {*}

multi sub how-many( Pair $a, Pair $b ) {
    say "Int $a and $b";
    return "There are $a and $b"
    
}
multi sub how-many( $a, $b ) {
    say "Not int $a and $b";
    my $calling = samewith( 1 => $a, 2 => $b );
    return $calling;
}

say how-many( "little piggie","littler piggie" );

