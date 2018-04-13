#!/usr/bin/env perl6

sub s { fail 'important failure message' }
my Int $x = s();
say $x;
