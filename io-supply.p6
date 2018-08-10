#!/usr/bin/env perl6

use v6;

(my $f1 = 'foo'.IO).spurt: 'foo';
(my $f2 = 'bar'.IO).spurt: 'bar';
react whenever IO::CatHandle.new($f1, $f2).Supply: :2size {.say}
