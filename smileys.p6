#!/usr/bin/env p6

use v6;

sub get-new-one(Num:D $v ) {
    return $v.VAR.default;
}

sub get-new-two(Num:U $v ) {
    return $v.VAR.default;
}

say get-new-one(0e0).perl;
say get-new-two(0e0).perl;


