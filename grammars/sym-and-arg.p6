#!/usr/bin/env perl6

use v6;

grammar Foo {
    token TOP     { (.) {} <bar> }
    proto token bar {*}
    token bar:sym<alpha>  { <alpha>+ }
    token bar:sym<digit>  { <digit>+ }
}

say Foo.parse("xxz");
say Foo.parse("x01")
