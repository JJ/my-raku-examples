#!/usr/bin/env perl6

#From Comborico in https://hastebin.com/ugoticeqab.pl

use v6;

sub count-a {
    my $word = "banana";
    my $count = 0;
    my $index = 0;		# source of error: $index intentionally not given a value.

    while True {
    	  $index = index $word, "a", $index;
	  last unless $index.defined;
	  $index++;
	  $count++
    }
    return $count;
}
say count-a;
