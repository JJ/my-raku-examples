#!/usr/bin/env raku

my $rand = supply { emit (rand × 100).floor for ^∞ };
my $first-prime = $rand.first: &is-prime;
$first-prime.tap: &say; # output the first prime from the endless random number supply $rand
