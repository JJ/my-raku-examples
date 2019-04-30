#!/usr/bin/env perl6

use v6;

say "Not here" for Empty;

my @to-undefine = <a b>;
@to-undefine = Empty;

say @to-undefine;
