#!/usr/bin/env perl6


my @alphabet = 'a'..'z';
my \U = @alphabet.Set;
my \Ø = ().Set;

sub postfix:<⁻>(Set $a) { U ⊖ $a }

my @sets;

@sets.push: Set.new( @alphabet.pick( @alphabet.elems.rand)) for @alphabet;

my (@union, @intersection);

for @sets X @sets -> (\A, \B) {
    @union.push: (A ∪ B)⁻  === A⁻ ∩ B⁻;
    @intersection.push: (A ∩ B)⁻  === A⁻ ∪ B⁻;
}

say "1st De Morgan is ", so @union.all;
say "2nd De Morgan is ", so @intersection.all;


