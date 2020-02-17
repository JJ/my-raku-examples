#!/usr/bin/env raku

my @years = 1999..2008;
@years.classify( { [ Date.new($_~"-01-01").is-leap-year ,
                    $_ %% 2  ] },
                 into => my %classified-years );
say %classified-years;
