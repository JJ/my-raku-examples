#!/usr/bin/env perl6

use v6;


grammar Foo {
    token TOP { <action>+ % " " }
    proto token action {*}
    token action:sym<come> { <sym> }
    token action:sym<bebe> { <sym> }
    token action:sym<default> { \w+ }
}.parse("come bebe ama").say;
