#!/usr/bin/env perl6

use v6;

my $tracker = '';
multi d($x)     { $tracker ~= 'Any' ~ callwith( "called-with" => $x) };
multi d(Pair $x) { $tracker ~= "Pair $x" };

say d( 3 );
