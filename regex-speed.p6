#!/usr/bin/env perl6

use v6;

my @array = "aaaaa" .. "fffff";
my @search = "aaaa" .. "cccc";

say @array [&index] @search;
