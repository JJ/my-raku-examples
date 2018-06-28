#!/usr/bin/env perl6

use v6;

use NativeCall;

sub strdup(Str $s --> Pointer[Str]) is native {*}
sub memcpy(Pointer[void] $destination, Pointer[void] $source, int32 $num --> Pointer[void] ) is native {*}

my Pointer[Str] $p = strdup("Success!");
say $p.deref;

my Pointer[void] $source .= new;
my Pointer[void] $p-void .= new ;

#memcpy( $p-void, $source, 5 );

#say $p-void;
