#!/usr/bin/env raku

use NativeCall;

class TS is repr('CStruct') {
    has int64 $.ot;
    has int64 $.one;
}

sub show2( CArray[TS] --> int32) is native(
    './libshow.so'
    ) {*}

my int64 $ot = 50;
my int64 $one = 60;
my $A = CArray[TS].new( TS.new( :$ot, :$one), TS.new( :$ot, :$one));

show2( $A);
