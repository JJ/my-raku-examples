#!/usr/bin/env perl6

use v6;

proto how-many(|) {*}
multi sub how-many( $a ) { return "Only one $a" }
multi sub how-many( $a, $b ) {
    say "$a and $b";
    if $a ~~ /\d/  {
        say "Int";
        return "There are $a and $b"
    } else {
        say "Not int";
        return callwith( "1 $a", "2 $b" );
    }
}

say how-many( "little piggie" );
say how-many( "little piggie","littler piggie" );

