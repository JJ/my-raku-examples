#!/usr/bin/env perl6

use v6;

class DNA {
    has $.chain is rw;

    method STORE ($chain where {
                         $chain ~~ /^^ <[ACGT]>+ $$ / and
                         $chain.chars %% 3
                     }, :$initialize --> DNA) {
        if $initialize {
            self= DNA.new( chain => $chain )
        } else {
            self.chain = $chain;
            self
        }
    }

    method Str(::?CLASS:D:) { return $.chain.comb.rotor(3) }
};

my @string is DNA = 'GAATCC';
say @string.Str;
@string = 'ACGTCG';
say @string.Str;

