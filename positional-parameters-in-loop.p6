#!/usr/bin/env raku

my @s=<a b c d>;
for @s.kv.rotor(2) -> ($k, $) {
    "{@s[$_]} ".print for ($k..^@s.elems);
    printf("\n");
}
