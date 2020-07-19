#!/usr/bin/env raku

my $a = lazy ^10;
my $b = lazy gather for ^10 { take $_ };

say $a.raku;
say $b.raku;
say $a eqv $b;

