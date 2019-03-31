#!/usr/bin/env perl6

use v6;

sub alias-named(:color(:$colour),
                :variety(:style(:sort(:type(:class($kind)))))) {
    return $colour ~ " " ~ $kind
}
say alias-named(color => "red", style => "A");     # both names can be used
say alias-named(colour => "green", variety => "B");  # more than two names are ok
say alias-named(color => "white", class => "C");  # every alias is independent
