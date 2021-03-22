class DNA {
    has $.chain is rw;
 
    method STORE ($chain where {
                         $chain ~~ /^^ <[ACGT]>+ $$ / and
                         $chain.chars %% 3
                     }, :$INITIALIZE --> DNA) {
        if $INITIALIZE {
            say "Initialize";
        } else {
            say "Storing $chain";
        }
        self.chain = $chain;
        self
    }

    method Str() { return $!chain.comb.rotor(3) }
};

my @string is DNA = 'GAATCC';
say ~@string;
@string = 'ACGTCG';
say ~@string;
