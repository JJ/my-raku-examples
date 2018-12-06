#!/usr/bin/env perl6

use v6;

my $arg = 'Hello';
my $captured = run('echo', $arg, :out).out.slurp;
say $captured;
$captured = run(«echo "$arg"», :out).out.slurp;
say $captured;
$captured = shell("echo $arg", :out).out.slurp;
say $captured;
$captured = qqx{echo $arg};
say $captured;
