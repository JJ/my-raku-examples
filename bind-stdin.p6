#!/usr/bin/env perl6

use v6;

my $p = Proc::Async.new("cat", :in);
my $h = "/etc/profile".IO.open;
$p.bind-stdin($h);
$p.start;
