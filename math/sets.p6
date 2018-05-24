#!/usr/bin/env perl6


my @arbitrary-numbers = ^100;
my \U = @arbitrary-numbers.Set;
my \Ø = ().Set;

my @sets;

@sets.push: Set.new( @arbitrary-numbers.pick( @arbitrary-numbers.elems.rand)) for @arbitrary-numbers;

my (@union, @intersection);

for @sets -> $set {
    @union.push: $set ∩ $set === $set;
    @intersection.push: $set ∪ $set === $set;
}

say "Idempotent union is ", so @union.all;
say "Idempotent intersection is ", so @intersection.all;

my (@universe, @empty-set);

for @sets -> $set {
    @universe.push: $set ∪ U === U;
    @empty-set.push: $set ∩ Ø === Ø;
}

say "Universe dominates ", so @universe.all;
say "Empty set dominates ", so @intersection.all;

