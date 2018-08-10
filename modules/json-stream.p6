#!/usr/bin/env perl6

use v6;

"random.txt".IO.open.Supply.tap: { .perl.say };


