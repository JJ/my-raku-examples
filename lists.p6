#!/usr/bin/env perl6

our @list = 1, 2;        # This is two-element list
our $list = (1, 2);      # This is also a List, in parentheses
$list = (1; 2);      # same List (see below)
$list = (1);         # This is not a List, just a 1 in parentheses
$list = (1,);        # This is a one-element List
say $list;

