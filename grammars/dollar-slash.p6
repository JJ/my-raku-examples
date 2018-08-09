#!/usr/bin/env perl6

use v6;

grammar G {
    token TOP { <thingy> .* }
    token thingy { 'Þor' }
}

my $match = G.parse("Þor is mighty");
say $match.perl;
say $/.perl;
say $/<thingy>.perl;
