#!/usr/bin/env perl6

sub might-sink {
    return [1,2,Failure.new("boo!"),"still here"];
}

might-sink;
say might-sink;

