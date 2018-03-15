#!/usr/bin/env perl6

use v6;

my @floors = ( 'A', ('B','C', ('E','F','G')));
say  @floors.tree( *.join("-"), *.join("—"), *.join("|" )); 

