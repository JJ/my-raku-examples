#!/usr/bin/env perl6

use v6;
my $j = +any "not a number", "42", "2.1";
say "We have a junction";
my @list = (gather $j».defined.take);
say "We have a list";
@list.grep( { $_.defined } ).say; # OUTPUT: «(42 2.1)␤»
