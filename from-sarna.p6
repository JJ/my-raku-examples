#!/usr/bin/env perl6

use v6;

sub foo(Int $n where 1..10) {
    say "In foo say $n";
}

sub bar() {
    my $x = prompt("tell me a number\n").Int;
    unless 1 ≤ $x ≤ 10 {
        say "wrong number $x";
        samewith();
    }
    say "Out the loop with $x";
    foo($x);
}

sub MAIN() {
    bar();
}
