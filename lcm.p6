#!/usr/bin/env perl6

my $x = (7,14...∞)[0...100] ∩ (25...35);
say [lcm] $x.keys;
