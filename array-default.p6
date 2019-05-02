#!/usr/bin/env perl6

use v6;

my @array is default( 1,2,3 ) = <a b c>;
say @array;
@array = Nil;
say @array;
