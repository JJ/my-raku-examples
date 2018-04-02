#!/usr/bin/env perl6

proto foo (|) {*};

multi foo ( Any $n ) {
    say "Any";
    say $n;
}

multi foo ( Int $n ) {
    say "Int";
    callsame;
}

foo(3);
