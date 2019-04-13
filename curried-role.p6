#!/usr/bin/env perl6

use v6;

role Zipi[::T] {
    method zape { "Uses " ~ T.^name };
}

role Zipi[::T, ::Y] {
    method zape { "Uses " ~ T.^name ~ " and " ~ Y.^name };
}

for Zipi[Int], Zipi[Int,Str] -> $role {
    say $role.HOW;
    say $role.new().zape;
}
