#!/usr/bin/env perl6

use v6;

sub bar () { return "baþ" };

my $wrapped = &bar.wrap( { " → " ~ callsame() ~ " ← " } );

say bar();
