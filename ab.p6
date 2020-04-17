#!/usr/bin/env raku

my $a = 5000;
my $b = 50000;

for 1..10 {
    say $a/$b;
    $a += 400+200.rand;
    $b += 4000+2000.rand;
}
