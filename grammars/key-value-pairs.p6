#!/usr/bin/env perl6

use v6;

use KeyValuePairs;
use ConfigurationSets;

use Grammar::Tracer;

my $actions = KeyValuePairsActions;
my $res = KeyValuePairs.parse(q:to/EOI/, :$actions).made;
second=b
hits=42
perl=6
EOI

say $res;
for @$res -> $p {
    say $p;
    say "Key: $p.key()\tValue: $p.value()";
}



