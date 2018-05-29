#!/usr/bin/env perl6

use v6;

my &random-f = -> $arg  { "Just $arg" };

say random-f("boo");

role Argable does Callable {
    method argh() {
        self.CALL-ME( "argh" );
    }
}

&random-f does Argable;

say random-f.argh;
