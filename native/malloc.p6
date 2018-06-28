#!/usr/bin/env perl6

use v6;
use NativeCall;

sub malloc( int32 $size --> Pointer[void] ) is native { * };
sub memcpy( Pointer[void] $source, Pointer[void] $destination, int32 $size ) is native { * };

my Pointer[void] $for-malloc = malloc( 32 );
say $for-malloc.perl;

my Blob $blob = Blob.new(0x22, 0x33);
my Pointer[void] $src-memcpy = nativecast(Pointer[void], $blob);
my Pointer[void] $dest-memcpy = malloc( 32 );
memcpy($src-memcpy,$dest-memcpy,2);
my Pointer[int] $inter = nativecast(Pointer[int], $dest-memcpy);
say $inter;
