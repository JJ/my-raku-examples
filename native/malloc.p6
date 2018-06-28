#!/usr/bin/env perl6

use v6;
use NativeCall;
use NativeHelpers::Blob;

sub malloc(size_t $size --> Pointer) is native {*}
sub memcpy(Pointer $dest, Pointer $src, size_t $size --> Pointer) is native {*}

my $blob = Blob.new(0x22, 0x33);
my $src = nativecast(Pointer, $blob);
my $dest = malloc( $blob.bytes );
memcpy($dest, $src, $blob.bytes);
my $inter = nativecast(Pointer[int8], $dest);

my $esponja = blob-from-pointer( $inter, :2elems, :type(Blob[int8]));
say $esponja;

