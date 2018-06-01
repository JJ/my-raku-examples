#!/usr/bin/env perl6

use v6;

class DNA is Str does Iterable {
    
    method new ($chain where {
                       $chain ~~ /^^ <[ACGT]>+ $$ / and
                       $chain.chars %% 3 } ) {
        self.bless( value => $chain );
    }
    
    method iterator( ){ self.comb.rotor(3).list.iterator }
};

my $a := DNA.new('GAATCC');
say $a.^name;
.say for $a;
my $b := DNA.new("AAGCCT");
.say for $b;


