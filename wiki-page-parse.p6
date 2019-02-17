#!/usr/bin/env perl6

use v6;

my $file = "Monthly-Bug-Squash-Day.md";

my $page = $file.IO.slurp;

dd  $page ~~ / ^^ ‘## Dates’                              \N*\n
               ^^ ‘|’ \s* ‘Date’ \s* ‘|’                  \N*\n/;

dd  $page ~~ / ^^ ‘## Dates’                              \N*\n
               ^^ ‘|’ \s* ‘Date’ \s* ‘|’                  \N*\n
              [^^ ‘|’[‘-’|‘:’]                            \N*\n]?
              [^^ ‘|’ \s* [‘🍕’|‘<br>’|‘[’|‘*’|‘~’]*
               \s* $<dates>=[\d\d\d\d\-\d\d\-\d\d] >> \N*\n]+ /;

