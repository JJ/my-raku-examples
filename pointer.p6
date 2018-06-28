#!/usr/bin/env perl6

use v6;

use NativeCall;

sub strdup(Str $s --> Pointer) is native {*}
sub puts(Pointer $p --> int32) is native {*}
sub free(Pointer $p --> int32) is native {*}

my Pointer $p = strdup("Success!");
say $p;
say 'puts returns ', puts($p);
say 'free returns ', free($p);
