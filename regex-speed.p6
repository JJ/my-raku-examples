#!/usr/bin/env perl6

use v6;

my @array = "aaaaa" .. "fffff";
my @search = "aaaa" .. "cccc";

my $search = "@search.map( "\""~*~"\"").join('|')".EVAL;
say $search;

.put for @array.grep: index( $search );
