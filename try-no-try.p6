#!/usr/bin/env perl6

use v6;

{
    my $x = +"a";
    say $x.^name;
} # OUTPUT: «Failure␤»

try {
    my $x = +"a";
    say $x.^name;
}

try {
    die "Tough luck";
    say "Not gonna happen";
}

try {
    fail "FUBAR";
} 

