#!/usr/bin/env perl6

use v6;

say Any.roll;    # OUTPUT: «(Any)␤»
say Any.roll(5);
say Bool.roll(3);

my %with-keys = 'what' => 'is', 'a' => 'list';
my &it's-any-now = sub ( Any(Hash) $list) {
    say $list.^name;
    say $list.keys
};

it's-any-now( %with-keys );


