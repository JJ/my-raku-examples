#!/usr/bin/env raku

sub find-the-number ( Int $n where $n < 10 ) {
    fail unless $n == 7;
}

find-the-number($_) for 1..10;
