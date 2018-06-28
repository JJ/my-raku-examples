#!/usr/bin/env perl6

use v6;
use NativeCall;

sub malloc(size_t $size --> Pointer) is native {*}
sub memcpy(Pointer $dest, Pointer $src, size_t $size --> Pointer) is native {*}

my $blob = Blob.new(0x22, 0x33);
my $src = nativecast(Pointer, $blob);
my $dest = malloc( $blob.bytes );
memcpy($dest, $src, $blob.bytes);
my $inter = nativecast(Pointer[int8], $dest);

my $cursor = $inter;

my Buf $new-blob .= new() ;
for 1..$blob.bytes {
    $new-blob.append: $cursor.deref;
    $cursor++;
}

say $new-blob;

