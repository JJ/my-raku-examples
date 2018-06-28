#!/usr/bin/env perl6

use v6;
use NativeCall;

sub malloc( int32 $size --> Pointer[void] ) is native { * };

my Pointer[void] $for-malloc = malloc( 32 );
say $for-malloc.perl;

my Blob $blob = Blob.new(0x22, 0x33);
nativecast(Pointer[void], $blob);
