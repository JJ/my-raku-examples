#!/usr/bin/env perl6

use v6;

grammar Foo {
    token TOP     { (.) {} <bar($0)> }
    token bar( $s )  { {say ~$s} $s <alpha>+ }
}

say Foo.parse("xxz")
