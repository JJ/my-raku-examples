#!/usr/bin/env perl6

use v6;

my $a = "AABBCCBGG";
say join "\n", do for $a.comb.squish {
    say "Pre-s/// $_";
    $a ~~ s/^{say "Checking $_"} ($_+) //;
    say "\$a is $a";
}
