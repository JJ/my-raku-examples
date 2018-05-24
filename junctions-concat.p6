#!/usr/bin/env perl6

use v6;

my $odd  = 1|3|5;
my $even = 2|4|6;

my $merged = $odd ~ $even;
say $merged; #OUTPUT: «any(12, 14, 16, 32, 34, 36, 52, 54, 56)␤»

say "Found 34!" if 34 == $merged; #OUTPUT: «Found 34!␤»

my $prefixed = "0" ~ $odd;
say "Found 03" if "03" == $prefixed; #OUTPUT: «Found 03!␤»

my $postfixed = $odd ~ "1";
say "Found 11" if 11 == $postfixed; #OUTPUT: «Found 11!␤»
