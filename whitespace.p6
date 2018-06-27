#!/usr/bin/env perl6

use v6;

sub alignment(+@l) { +@l };

sub long-name-alignment(+@l) { +@l };

alignment\         (1,2,3,4).say;
long-name-alignment(3,5)\   .say;
say Inf+Inf\i;
