#!/usr/bin/env perl6

use v6;

class DNA is Str does Iterable {
    
    method new ($str where { $str ~~ /^^ <[ACGT]>+ $$ / } ) {
        self.bless( value => $str );
    }
    
    method iterator(DNA:D:){ self.comb.iterator }
};

my $str = 'GAATCC';
my $a := DNA.new($str);
.say for $a; 
