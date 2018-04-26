#!/usr/bin/env perl6

use v6;

put '-' x 70;
my $p1 = run 'ls', :out;
put "exit code: {$p1.exitcode}";
put $p1.out.slurp(:close);
