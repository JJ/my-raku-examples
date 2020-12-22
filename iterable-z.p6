#!/usr/bin/env raku

class DNA does Iterable {
    has $.chain;
    method new ($chain where { $chain ~~ /^^ <[ACGT]>+ $$ / } ) {
        self.bless( :$chain );
    }
 
    method iterator(DNA:D:) {
        $!chain.comb.rotor(3).iterator;
    }
}
 
my $a := DNA.new('GAATCC');
my $b := DNA.new('ATCATC');

say $a Z $b;
