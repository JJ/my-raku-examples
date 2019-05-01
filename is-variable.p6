#!/usr/bin/env perl6

use v6;

my %store;

multi sub trait_mod:<is>(Variable $v, :$show){
    say "Variable is ", $v.perl;
}

my $foo is show;
my Int $bar is show;
my int $baz is show;


