#!/usr/bin/env perl6

use v6;

class DNA does Iterable {
    has $.chain;
    method new ($chain where {
                       $chain ~~ /^^ <[ACGT]>+ $$ / and
                       $chain.chars %% 3 } ) {
        self.bless( :$chain );
    }
    
    method iterator(DNA:D:){ $.chain.comb.rotor(3).iterator }
};

my $a := DNA.new('GAATCC');
.say for $a;

my @longer-chain =  DNA.new('ACGTACGTT');
say @longer-chain.perl;
say @longer-chain.^name;
say @longer-chain.^mro;
say  @longer-chain».join("").join("|");
