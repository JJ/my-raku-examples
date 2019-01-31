#!/usr/bin/env perl6

my @bitfields;
for ^3 -> $i {
    @bitfields[$i] = Bool.pick xx 3;
}

my @total = 0 xx 3;
for @bitfields -> @row {
    @total Z+= @bitfields;
    say "Foo";
}
say @total;
