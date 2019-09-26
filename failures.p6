#!/usr/bin/env perl6

use v6;
my $j = +any "not 33", "42", "2.1";
my @list = gather for $j -> $e {
    take $e if $e.defined;
}
@list.say; # OUTPUT: «(42 2.1)␤»
