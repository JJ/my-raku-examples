#!/usr/bin/env perl6

use v6;


my $regex = /(\@: [ab] | [0..9] )+ /;

my @tests = ('123', '@a', '1@b', '@a123');

for @tests -> $t {
    say $t ~~ $regex;
}

my $str = "ACG GCT ACT An interesting chain";

say $str ~~ /<[ACGT\s]>+ \s+ (<[A..Z a..z \s]>+)/;
say $str ~~ /<[ACGT\s]>+: \s+ (<[A..Z a..z \s]>+)/;

$_ = "ACG GCT ACT IDAQT";
say  m:g/[(\w+) \s*]+ (\w+) $$/;
