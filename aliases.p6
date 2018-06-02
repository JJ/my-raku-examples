#!/usr/bin/env perl6

use v6;

sub alias-named(:color(:$colour), :type(:class($kind))) {
    say $colour ~ " " ~ $kind
}
alias-named(color => "red", type => "A");     # both names can be used
alias-named(colour => "green", type => "B");  # more than two names are ok
alias-named(color => "white", class => "C");  # every alias is independent
