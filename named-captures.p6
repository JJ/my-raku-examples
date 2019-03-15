#!/usr/bin/env perl6

use v6;

"þor is mighty" ~~ /is \s+ $<iswhat>=(\w+)/;
say $<iswhat>;
