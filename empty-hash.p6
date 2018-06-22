#!/usr/bin/env perl6

use v6;

my %empty-hash := {};
say %empty-hash.perl;
%empty-hash = %();
say %empty-hash.perl;
