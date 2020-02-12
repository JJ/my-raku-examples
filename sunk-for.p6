#!/usr/bin/env raku

class Sunk {
    has $.titanic;
    method sink {
        say "Sinking $!titanic";
    }
}

for 1 {
    say "About to sink";
    Sunk.new( :titanic($_) );
}

