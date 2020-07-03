#!/usr/bin/env raku

my $str = "(a)";

say $str ~~ /"(" ~ ")" \w /;
say $str ~~ /"(" ~ ")" (\w) /;
say $str ~~ /"(" ~ ")" <(\w)> /;
say $str ~~ /"(" <(~)> ")" \w /;
