#!/usr/bin/env perl6

use v6;

my %count-commands; %count-commands{$_}++ for "/home/jmerelo/.bash_history".IO.lines() ==> map { .match(/git\s(\w+)/).list.[0] } ==> grep { .defined }; say %count-commands;

