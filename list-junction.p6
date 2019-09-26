#!/usr/bin/env perl6

use v6;
my $j = +any "33", "42", "2.1";
my @list = gather for $j -> $e {
    say $e;
    take $e;
}
@list.say; # OUTPUT: «(42 2.1)␤»
