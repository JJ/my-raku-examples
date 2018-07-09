#!/usr/bin/env perl6

use v6;

proto how-many(|) {*}

multi how-many( Associative $a ) {
    say "Associative $a ";
    my $calling = callwith( 1 => $a );
    return $calling;
}

multi how-many( Pair $a ) {
    say "Pair $a ";
    return "There is $a "
    
}

multi how-many( Hash $a ) {
    say "Hash $a";
    return "Hashing $a";
}

my $little-piggie = little => 'piggie';
say $little-piggie.^name;
say &how-many.cando( \( $little-piggie ));
say how-many( $little-piggie  );

