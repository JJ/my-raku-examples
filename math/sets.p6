#!/usr/bin/env perl6


my @arbitrary-numbers = ^100;

my @sets;

@sets.push: Set.new( @arbitrary-numbers.pick( @arbitrary-numbers.elems.rand)) for @arbitrary-numbers;

my (@union, @intersection);

for @sets -> $set {
    @union.push: $set ∩ $set === $set;
    @intersection.push: $set ∪ $set === $set;
}

say "Idempotent union is ", so @union.all;
say "Idempotent intersection is ", so @intersection.all;
