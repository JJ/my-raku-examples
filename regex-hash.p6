#!/usr/bin/env perl6

use v6;

my @regex-check = ( /<alnum>/, /<alpha>/, /<punct>/ );

say @regex-check.map: "33af" ~~ *;
		     
