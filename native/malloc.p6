#!/usr/bin/env perl6

use v6;
use NativeCall;

use NativeCall;

sub malloc(size_t $size --> Pointer) is native {*}
sub memcpy(Pointer $dest, Pointer $src, size_t $size --> Pointer) is native {*}

my $blob = Blob.new(0x22, 0x33);
my $src = nativecast(Pointer, $blob);
my $dest = malloc(nativesizeof(int16));
memcpy($dest, $src, nativesizeof(int16));
my $inter = nativecast(CArray[int16], $dest);


.say for $inter.list;

