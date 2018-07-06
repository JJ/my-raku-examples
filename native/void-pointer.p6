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


class A is repr('CStruct') is export {
  has Pointer[void] $.wrongdoer;
  has int32 $.a;
}

my A $a .= new;
say $a.perl;
