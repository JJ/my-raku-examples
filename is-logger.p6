#!/usr/bin/env perl6

use v6;

my %store;

multi sub trait_mod:<is>(Sub $s, :$logger){
    %store{ DateTime.new( now ) } = $s.name ~ " → " ~ $s.signature.perl;
}

multi sub add( Int $a, Int $b) is logger {
    $a + $b;
}

multi sub add( Rat $a, Rat $b) is logger {
    $a + $b;
}

sub þor() is logger {}

say add(1,2);
say add(¾,½);
say þor();

say %store;

