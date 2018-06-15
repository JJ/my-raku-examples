#!/usr/bin/env perl6

use v6;

constant @IMM = <Innie Minnie Moe>;

class don't-instantiate is repr('Uninstantiable') {
    my $.counter;

    method imm () {
        return @IMM[ $.counter++ mod @IMM.elems ];
    }
}

say don't-instantiate.imm for ^10;
my $do-instantiate = don't-instantiate.new;
    
