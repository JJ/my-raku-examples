#!/usr/bin/env perl6

use v6;

say $*OUT =:= open '-', :w; # True
my $crlf-out = open IO::Special.new('<STDOUT>'), :nl-out("\r\n");
$*OUT.say: 1; # "1\n"
$crlf-out.say: 1; # "1\r\n"
