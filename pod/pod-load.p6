#!/usr/bin/env perl6

use v6;

use Pod::Load;

use Pod::To::Text;

my $pod = load( "get-pod.p6" );
dd $pod;

say pod2text $pod;
