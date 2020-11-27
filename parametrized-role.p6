#!/usr/bin/env perl6

use v6;

role Zipi[ \t ] {
    method zape { "Uses " ~ t };
}

for Zipi[1|2], Zipi[3], Zipi[[3,4]] -> $role {
    say $role.HOW;
    say $role.new().zape;
}
