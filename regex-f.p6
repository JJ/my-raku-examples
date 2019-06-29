#!/usr/bin/env perl6

use v6;

my regex number { \d+ [ \. \d+ ]? }
say so "32.51" ~~ &number;                         # OUTPUT: «True␤» 
