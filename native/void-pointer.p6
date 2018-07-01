#!/usr/bin/env perl6

use v6;

use NativeCall;

class test1 {

    method test
    {
        my Pointer[void] $dummy .= new;
        return $dummy;
    }
}

my test1 $t .= new;
say $t.test;
