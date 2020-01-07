#!/usr/bin/env raku

my @s=<a b c d>;
for @s.keys -> $k {
    "{@s[$_]} ".print for ($k..^@s.elems);
    printf("\n");
}
