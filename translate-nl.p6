#!/usr/bin/env perl6

use v6;

my $str = "Þor is mighty";
say $str.encode("ascii", :replacement( 'Th') ).decode("ascii");
