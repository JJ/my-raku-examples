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

my (@universe, @empty-set, @id-universe, @id-empty);

for @sets -> \A {
    @universe.push: A ∪ U === U;
    @id-universe.push: A ∩ U === A;
    @empty-set.push: A ∩ Ø === Ø;
    @id-empty.push: A ∪ Ø === A;
}

say "Universe dominates ", so @universe.all;
say "Empty set dominates ", so @empty-set.all;
say "Identity with U ", so @id-universe.all;
say "Identity with Ø ", so @id-empty.all;

