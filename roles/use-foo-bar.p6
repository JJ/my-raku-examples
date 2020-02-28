#!/usr/bin/env perl6

use v6;

use Foo;
use Bar;

say Bar.WHY;

sub f(bar \k) { }

f(bar.new);
