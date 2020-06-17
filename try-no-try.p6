#!/usr/bin/env perl6

use v6;

sub re-fail {
    my $x = +"a";
    unless $x.defined {
        $x.handled = True;
        say "Something has failed in \$x ", $x.^name;
        fail($x);
        return $x;
    } 
}

my $x = re-fail;
say $x.handled;

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

