#!/usr/bin/env perl6

use v6;

$_ = "3";

my regex decimal { \d };

say &decimal.Bool;
