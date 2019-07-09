#!/usr/bin/env perl6

use v6;

my $in_destructor = 0;

class Foo
{
    submethod DESTROY { $in_destructor++ }
}

my $foo;
for 1 .. 6000
{
    $foo = Foo.new();
}

say "DESTROY called $in_destructor times";
