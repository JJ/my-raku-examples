#!/usr/bin/env perl6

use v6;

my $list = [[1,2,3],[[4,5],6,7]];

say $list.deepmap( *² );
say $list.duckmap( *² );
say $list.duckmap( -> $_ { $_² } );
