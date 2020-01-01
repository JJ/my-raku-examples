#!/usr/bin/env raku

use NativeCall;

my $string = "FOO";
my $array = CArray[uint8].new($string.encode.list);
sub set_foo(CArray[uint8]) is native('const-char') { * }
set_foo( $array );
