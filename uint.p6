#!/usr/bin/env perl6

use v6;
use fatal;

sub foo( @nums where { @nums ~~ Array[Int] } ) {
    say @nums.join(" ");
}

sub bar( @nums where { @nums ~~ Array[UInt] } ) {
    say @nums.join(" ");
}

my UInt @nums = (1, 2);
say "foo: ";
foo(@nums);
say "bar: ";
bar(@nums);
