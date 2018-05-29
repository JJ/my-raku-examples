#!/usr/bin/env perl6

use v6;

class DNA is Str does Iterable {
    method iterator(DNA:D:){ self.comb.iterator }
};
 
my $a := DNA.new(value => 'GAATCC');
.say for $a; 
