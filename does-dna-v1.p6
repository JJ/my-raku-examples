#!/usr/bin/env perl6

use v6;

class DNA is Str {
    method iterator(DNA:D:){ self.comb.iterator }
};

my $a := DNA.new(value => 'GAATCC');
.say for $a; # OUTPUT: «G␤A␤A␤T␤C␤C␤»
