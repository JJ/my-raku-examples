#!/usr/bin/env perl6

use v6;
use NativeCall;

class myStruct is repr('CStruct') {
    has int32 $.A is rw;
    has int32 @.B[3] is CArray is rw;
    has int32 $.C is rw;
}

sub use_struct(myStruct $s) is native("./libalignment.so") { * };

my $s = myStruct.new();
$s.A = 1;
$s.B[0] = 2;
$s.B[1] = 3;
$s.B[2] = 4;
$s.C = 5;
say "Expected size of Perl 6 struct: ", (nativesizeof(int32) * 5);
say "Actual size of Perl 6 struct: ", nativesizeof( $s );
say 'Number of elements of $s.B: ', $s.B.elems;
say "B[0] = ", $s.B[0];
say "B[1] = ", $s.B[1];
say "B[2] = ", $s.B[2];
say "Calling library function..";
say "--------------------------";
use_struct( $s );
