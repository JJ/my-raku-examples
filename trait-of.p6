#!/usr/bin/env perl6

use v6;

constant \T = Int;
my $i of T = 42;
$i = "forty plus two";
CATCH { default { say .^name, ' ', .Str } }
