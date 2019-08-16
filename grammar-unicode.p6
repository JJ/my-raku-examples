#!/usr/bin/env perl6

for <y ✓ Ⅲ> {
    say $_.uniprops;
    say m/<|w>/;
}
