#!/usr/bin/env perl6

use v6;

class Positive does Rational[UInt] {};

my Positive $one-third = Positive.new(1,3);
say $one-third;
my Positive $fail =Positive.new(-2,3);
say $fail;
