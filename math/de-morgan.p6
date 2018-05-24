#!/usr/bin/env perl6


my @alphabet = 'a'..'z';
my \U = @alphabet.Set;

sub postfix:<⁻>(Set $a) { U ⊖ $a }

my @sets;

@sets.push: Set.new( @alphabet.pick( @alphabet.elems.rand)) for @alphabet;

my ($de-Morgan1,$de-Morgan2) = (True,True);

for @sets X @sets -> (\A, \B){
    $de-Morgan1 &&= (A ∪ B)⁻  === A⁻ ∩ B⁻;
    $de-Morgan2 &&= (A ∩ B)⁻  === A⁻ ∪ B⁻;
}

say "1st De Morgan is ", $de-Morgan1;
say "2nd De Morgan is ", $de-Morgan2;


