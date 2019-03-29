#!/usr/bin/env perl6

use v6;

my $changes = (my $pwc = ‘Perl Weekly Challenge’) ~~ tr/e/E/;
say $pwc;
say +$changes;
