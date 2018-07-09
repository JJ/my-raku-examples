#!/usr/bin/env perl6

use v6;

my $tracker = '';
multi d($x)     { $tracker ~= 'Any' ~ $x };
multi d(Pair $x) { $tracker ~= 'Pair'; callwith(~$x); $tracker ~= 'Pair' };

say d( 2 => 3 );
