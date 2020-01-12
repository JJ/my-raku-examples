#!/usr/bin/env raku

my @matrix = ^100 .rotor(10).map: *.Array;
@matrix[1;*] = 1 xx 10;
@matrix[1;1] = 3;
