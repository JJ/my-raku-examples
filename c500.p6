#!/usr/bin/env perl6

use v6;

#Example for https://stackoverflow.com/questions/49958457/string-interpolation-in-perl6

say "\c500";
say "\c[500]";
my $i = 500;
my $character = q"\c["~$i~"]";
#say qq $character;
say $i.chr;
