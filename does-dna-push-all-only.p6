#!/usr/bin/env perl6

use v6;

class DNA does Iterable does Iterator {
    has $.chain;
    has Int $!index = 0;

    method new ($chain where {
                       $chain ~~ /^^ <[ACGT]>+ $$ / and
                       $chain.chars %% 3 } ) {
        self.bless( :$chain );
    }
    
    method iterator( ){ self }
    method pull-one( --> Mu){
        if $!index < $.chain.chars {
            my $codon = $.chain.comb.rotor(3)[$!index div 3];
            $!index += 3;
            return $codon;
        } else {
            return IterationEnd;
        }
    }
    
    method push-all(Iterator:D: $target) {
        for $.chain.comb.rotor(3) -> $codon {
            $target.push: $codon;
        }
    }

};

my $b := DNA.new("AAGCCT");
my @dna-array = $b;
say @dna-array; # OUTPUT: «[(A A G) (C C T)]␤»
