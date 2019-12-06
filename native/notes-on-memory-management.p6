#!/usr/bin/env perl6

use v6;

use NativeCall;

class AStringAndAnInt is repr("CStruct") {
  has Str $.a_string;
  has int32 $.an_int32;
  has Str $.version;
 
  sub init_struct(AStringAndAnInt is rw, Str, int32) is native('simple-struct', v2.3) { * }

  submethod BUILD(:$a_string, :$an_int) {
    init_struct(self, $a_string, $an_int);
  }
}

my $foo = AStringAndAnInt.new(a_string => "str", an_int => 123);
say "foo is {$foo.a_string} and {$foo.an_int32} and has version {$foo.version}";
