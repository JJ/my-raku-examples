#!/usr/bin/env raku

my @years = (2003..2008).map( { Date.new( $_~"-01-01" ) } );
say @years.map: *.year %% 2;
@years.classify( [ { $_.is-leap-year },
                   { $_.year %% 2 } ],
                 into => my %classified-years );
say %classified-years;
