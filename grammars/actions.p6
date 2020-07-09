#!/usr/bin/env perl6

use v6;

grammar KeyValuePairs {
    token TOP {
        [<pair> \n+]*
    }
 
    token ws {
        \h*
    }
 
    rule pair {
        <key=.identifier> '=' <value=.identifier>
    }
    token identifier {
        \w+
    }
}
 
class KeyValuePairsActions {
    method pair      ($/) {
        $/.make: $<key>.made => $<value>.made
    }
    method identifier($/) {
        # subroutine `make` is the same as calling .make on $/ 
        make ~$/
    }
    method TOP ($match) {
        # can use any variable name for parameter, not just $/ 
        $match.make: $match<pair>».made
    }
}
 
my $actions = KeyValuePairsActions.new;
my $res = KeyValuePairs.parse(q:to/EOI/, :$actions).made; 
    second=b
    hits=42
    perl=6
    EOI

say $res.^name;
    
for @$res -> $p {
    say "Key: $p.key()\tValue: $p.value()";
}
