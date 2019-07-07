#!/usr/bin/env perl6

use v6;

"abc" ~~ /(a) :my $captured = $0; /;
say $captured;
"abc" ~~ /(a){} :my $really-captured = $0; /;
say $really-captured;
