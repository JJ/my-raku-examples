#!/usr/bin/env perl6

sub limit-lines(Str $s, Int $limit where $limit > 0) {
    my @lines = $s.lines;
    @lines[0 .. min @lines.elems, $limit].join("\n")
}
say limit-lines "a \n b \n c \n d \n", 3;
say limit-lines Str, 3;
CATCH { default { put .^name, ': ', .Str } };
