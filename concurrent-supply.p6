#!/usr/bin/env perl6

use v6;

my $i = 0;
my Channel $c .= new;
my $supply1 = start { for ^5 { await Promise.in(1); $c.send("B"); } };
my $supply2 = start { for ^5 { await Promise.in(0.5); $c.send("A"); } };

await $supply2;
await $supply1;
$c.close;

.say for $c.list;
