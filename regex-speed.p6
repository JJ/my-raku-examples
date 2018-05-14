#!/usr/bin/env perl6

use v6;

my @array = "aaaaa" .. "fffff";
my @search = "aaaa" .. "cccc";

my $search = "/@search.join('|')/".EVAL;

.put for @array .grep: * ~~ /^ <$search> /;
