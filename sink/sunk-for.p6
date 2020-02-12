#!/usr/bin/env raku

class Sunk {
    has $.titanic;
    method sink {
        say "Sinking $!titanic";
    }
}

Sunk.new( :titanic($_) ) for ^3;

for 1 {
    say "About to sink";
    Sunk.new( :titanic($_) );
}

