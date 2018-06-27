#!/usr/bin/env perl6

use v6;

my $ls-alt-handle = open :w, '/tmp/cur-dir-ls-alt.txt';
my $proc = run "ls", "-alt", :out($ls-alt-handle);
