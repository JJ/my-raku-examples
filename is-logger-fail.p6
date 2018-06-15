#!/usr/bin/env perl6

use v6;

my &loggr = -> $event {
    state %store;
    %store{ DateTime.new( now ) } = $event;
}

multi sub trait_mod:<is>(Sub $s, :$logger){
    loggr( $s.name );
}

multi sub add( Int $a, Int $b) is logger {
    $a + $b;
}

say add(1,2);


