#!/usr/bin/env perl6

use v6;

my $p = Proc::Async.new("ls", :out);
my $h = "ls.out".IO.open(:w);
$p.bind-stdout($h);
await $p.start;

say "Done";
