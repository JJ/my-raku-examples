#!/usr/bin/env perl6

use v6;
my $j = +any "33", "42", "2.1";
gather for $j -> $e {
    say $e;
}
for $j -> $e {
    say $e;
}

