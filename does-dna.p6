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

    method push-exactly(Iterator:D: $target, int $count --> Mu) {
        return IterationEnd if $.chain.elems / 3 < $count;
        for ^($count) {
            $target.push: $.chain.comb.rotor(3)[ $_ ];
        }
    }
    
};

my $a := DNA.new('GAATCC');
.say for $a;
my $b := DNA.new("AAGCCT");
.say for $b;

my @dna-array = $b;
say @dna-array;

my $þor := DNA.new("CAGCGGAAGCCT");
for $þor -> $first, $second {
    say "Coupled codons: $first, $second";
}

my @longer-chain =  DNA.new('ACGTACGTT');
say @longer-chain.perl;
say @longer-chain.^name;
say @longer-chain.^mro;
say @longer-chain».join("").join("|");

