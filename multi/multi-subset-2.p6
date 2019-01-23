#!/usr/bin/env perl6

use v6;

proto check($value) { * }

subset PositiveEven of UInt where * %% 2;

multi check(Int $value) {
    say "integer"
}

multi check(UInt $value) {
    if $value ~~ PositiveEven {
	nextsame;
    }
    say "positive"
}

multi check(PositiveEven $value) {
    say "positive & even"
}

say :(UInt $value).perl;
say :(PositiveEven $value).perl;

# example:
check(32);
