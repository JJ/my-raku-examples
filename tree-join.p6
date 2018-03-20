#!/usr/bin/env perl6

use v6;

my @floors = ( 'A', ('B','C', ('E','F','G')));
say @floors.tree(1).flat.elems;
say @floors.tree(2).flat.elems;
say @floors.tree( *.join("-"), *.join("—"), *.join("|" )); 

