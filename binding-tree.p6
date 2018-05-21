#!/usr/bin/env perl6

use v6;

my $root = a => (b => (c=> Nil));
my $here = $root;
while $root.value ~~ Pair {
  $root = $root.value;
}
$here = d => Nil;
say $here;
say $root;
