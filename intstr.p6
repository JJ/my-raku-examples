#!/usr/bin/env perl6

use v6;

# Taken from https://stackoverflow.com/questions/50516409/perl-6-type-inference

sub abc(Int $n) { say $n }
my IntStr $s = <123>;
abc $s;

sub bcd(Int(Str) $n) { say $n }
my $t = "123";
bcd $t;

sub efg($n) { say +$n }
my Int $u = 123;
my Str $v = "123";
efg $u;
efg $v;

sub xyz($n where $_ ~~ Int | Str ) { say +$n }
xyz $u;
xyz $v;
xyz $t;
xyz $s;
