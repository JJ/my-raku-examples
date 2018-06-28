#!/usr/bin/env perl6

use v6;

use NativeCall;

sub strdup(Str $s --> Pointer[Str]) is native {*}
sub puts(Pointer $p --> int32) is native {*}
sub free(Pointer $p --> int32) is native {*}

my Pointer[Str] $p = strdup("Success!");
say $p.deref;
say 'puts returns ', puts($p);
say 'free returns ', free($p);
