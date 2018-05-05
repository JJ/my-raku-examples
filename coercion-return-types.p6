#!/usr/bin/env perl6

use v6;

sub square-str (Int $x --> Str(Int)) {
    $x²
}

for 2,4, *²  … 256 -> $a {
    say $a, "² is ", square-str( $a ).chars, " figures long";
}
