#!/usr/bin/env raku

use v6.d;

use NativeCall;

class simple is repr('CStruct') {

    has uint16 $.value;

}



my $simple = simple.new(:value(0xffff));
say 0xffff;
my $also-simple = simple.new(:value(0xfffe));
say $also-simple.value + 0;
say $simple.value - $also-simple.value;

say "BROKEN!" if $simple.value < 0xffff;

