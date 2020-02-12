#!/usr/bin/env raku

class Sunk {
    has $.titanic;
    method sink {
        say "Sinking $!titanic";
    }
}

Sunk.new( :titanic($_) ) for 1..3;

^3 .map: { Sunk.new( :titanic($_) ) };

