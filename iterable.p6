#!/usr/bin/env perl6

use v6;

class InnieMinnieMoe does Iterable {
    has @.IMM = <Innie Minnie Moe>;

    method iterator() {
        return @.IMM;
    }

}

my $imm := InnieMinnieMoe.new;
.say for $imm;
