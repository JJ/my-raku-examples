#!/usr/bin/env raku

my @lazy-array = lazy 1, 11, 121 ... 10**100;
say @lazy-array[10**50];
