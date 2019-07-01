#!/usr/bin/env perl6

use v6;


grammar Foo {
    token TOP { <letter>+ }
    proto token letter {*}
    token letter:sym<P> { <sym> }
    token letter:sym<e> { <sym> }
    token letter:sym<r> { <sym> }
    token letter:sym<l> { <sym> }
    token letter:sym<*> {   .   }
}.parse("I ♥ Perl").say;
