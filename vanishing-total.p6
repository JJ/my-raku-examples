#!/usr/bin/env perl6

my @bitfields;
for ^3 -> $i {
    @bitfields[$i] = Bool.pick xx 3;
}

my @total = [\Z+] @bitfields;
say @total;
