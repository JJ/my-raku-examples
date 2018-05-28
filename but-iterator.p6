#!/usr/bin/env perl6

use v6;

my %hash-plus := %( 3 => 33, 4 => 44) but role Lastable { method last() { self.sort.reverse.first }};
say %hash-plus.last;
