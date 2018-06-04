#!/usr/bin/env perl6

use v6;

use NativeCall;

class AStringAndAnInt is repr("CStruct") {
  has Str $.a_string;
  has int32 $.an_int32;
 
  submethod TWEAK {
    $!a_string := Str.new;
    $!an_int32 = 0;
  }
 
  sub init_struct(AStringAndAnInt is rw, Str, int32) is native('simple-struct') { * }
  method init(:$a_string, :$an_int) {
    init_struct(self, $a_string, $an_int);
  }
}

my $foo = AStringAndAnInt.new;
$foo.init(a_string => "str", an_int => 123);
say $foo.a_string;
