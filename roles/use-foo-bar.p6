#!/usr/bin/env perl6

use v6;

use Foo;
use Bar;

sub f(bar \k) { }

f(bar.new);
