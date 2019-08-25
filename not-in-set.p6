#!/usr/bin/env perl6

use v6;

my @a = <a b c d>;

say (@a ⊖ @a[0,1]).keys;
