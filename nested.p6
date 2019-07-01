#!/usr/bin/env perl6

use v6;

my regex nested { '(' ~ ')' .+  };

say "((a)(b)(c(d)))" ~~ &nested;
say "(a)" ~~ &nested;
