#!/usr/bin/env raku

class Sunk {
    has $.titanic;
    method sink {
        say "Sinking $!titanic";
    }
}

^3 .map: { Sunk.new( :titanic($_) ) };

