#!/usr/bin/env perl6

use v6;

my $root = a => (b => (c=> Nil));
my $here = $root;
while $here.value ~~ Pair {
  $here = $here.value;
}
$here = d => Nil;
say $here;
