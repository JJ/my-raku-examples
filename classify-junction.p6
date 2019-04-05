#!/usr/bin/env perl6

use v6;

say <abc abcdef xyz>.classify: *.contains: any 'a'..'f';
