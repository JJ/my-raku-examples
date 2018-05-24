#!/usr/bin/env perl6

use v6;

class Nothing {
    method ventured( $sub, **@args) {
        X::NYI.new( feature => &?ROUTINE.name,
                    did-you-mean => "gained",
                    workaround => "Implement it yourself" ).throw;
    }
}

my $nothing = Nothing.new;
$nothing.ventured("Nothing", "Gained");
