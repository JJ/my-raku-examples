#!/usr/bin/env perl6

use v6;

use Pod::Load;

for <runnable other> -> $f {
#    require "./$f.p6";
    my $pod = load( "$f.p6" );
    dd $pod;
}

