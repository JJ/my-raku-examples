#!/usr/bin/env perl6

use v6;

proto how-many(|) {*}

multi how-many( Any $a ) {
    say "Not int $a ";
    my $calling = callwith( 1 => $a );
    return $calling;
}

multi how-many( Pair $a ) {
    say "Int $a ";
    return "There is $a "
    
}


say how-many( "little piggie" );

