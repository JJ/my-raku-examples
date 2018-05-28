#!/usr/bin/env perl6

use v6;

role Lastable {
    method last() {
	self.sort.reverse[0];
    }
}
my %hash-plus := %( 3 => 33, 4 => 44) but Lastable;
say %hash-plus.sort[0];
say %hash-plus.last;
