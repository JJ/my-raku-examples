#!/usr/bin/env perl6

use v6;

for ^10 {
    CONTROL {
	when CX::Next { say "We're next" };
    }
    next if $_ %% 2;
    say "We're in $_";
}
