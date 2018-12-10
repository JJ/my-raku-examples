#!/usr/bin/env perl6

use v6;

my $p = Proc::Async.new("ls", :w);
my $h = "ls.out".IO.open(:w);
$p.bind-stdin($h);
