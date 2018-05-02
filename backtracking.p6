#!/usr/bin/env perl6

use v6;


my $regex = /(\@: [ab] | [0..9] )+ /;

my @tests = ('123', '@a', '1@b', '@a123');

for @tests -> $t {
    say $t ~~ $regex;
}
