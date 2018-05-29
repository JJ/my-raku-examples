#!/usr/bin/env perl6

use v6;

class DNA does Iterable {
    has $.chain;
    method new ($chain where { $chain ~~ /^^ <[ACGT]>+ $$ / } ) {
        self.bless( :$chain );
    }
    
    method iterator(DNA:D:){ $.chain.comb.rotor(3).iterator }
};

my $a := DNA.new('GAATCC');
.say for $a; 
