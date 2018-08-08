#!/usr/bin/env perl6

use v6;

my $name = "Jane Doe";

{
    let $name = prompt("Say your name ");
    die if !$name;
    CATCH {
            default { say "No name entered" }
    }
    say "We have $name";
}

say "We got $name";
