#!/usr/bin/env perl6

use v6;

grammar Foo {
    token TOP     { (.) {} <bar>+ }
    proto token bar {*}
    token bar:sym<x>  { <sym>+ }
    token bar:sym<z>  { <sym>+ }
    token bar:sym<1>  { <sym>+ }
    token bar:sym<0>  { <sym>+ }
}

say Foo.parse("xxz");
say Foo.parse("x01")
