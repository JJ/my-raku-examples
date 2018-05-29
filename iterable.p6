#!/usr/bin/env perl6

use v6;

role InnieMinnieMoe does Iterable {
    has @.IMM = <Innie Minnie Moe>;

    method iterator() {
        return @.IMM;
    }

}

my @whatever does InnieMinnieMoe = "";
.say for @whatever;
