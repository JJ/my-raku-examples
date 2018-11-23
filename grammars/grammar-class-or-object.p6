#!/usr/bin/env perl6

use v6;

grammar Mini {
    token TOP { \* <word> \* }
    token word { \w+ }
}

proto sub is-class( | ) { * };
multi sub is-class( Grammar:D $g ) { return "Object" };
multi sub is-class( Grammar:U $g ) { return "Class" };

say is-class( Mini );
say Mini.parse( "*ea*");


