#!/usr/bin/env perl6

use v6;

class DNA {
    has $.chain is rw;

    method STORE (Str $chain where {
			 /^^ <[ACGT]>+ $$ / and
			 .chars %% 3
		     } ,
		  :$INITIALIZE --> DNA) {
            self.chain  = $chain;
	    self
    }

    method Str(::?CLASS:D:) { return $!chain.comb.rotor(3).map( *.join("")).join("|") }
};

my @string is DNA = 'GAATCC';
say  @string.raku;
say @string.Str;
@string = 'ACGTCG';
say @string.Str;

