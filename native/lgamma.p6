#!/usr/bin/env perl6

use v6;

use NativeCall;

sub lgamma(num64 --> num64) is native(Str) {};

say lgamma(3e0);

my  num64 $x = 3.14.Num;
say lgamma($x);
