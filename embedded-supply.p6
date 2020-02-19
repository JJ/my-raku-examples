#!/usr/bin/env perl6

use v6;

my $supply = supply {
    for 1 .. 10 {
        emit($_);
    }
    done;
}
my $second-supply = supply {
    $supply.tap( -> $v {
                     if 1 {
                         with True {
                             for 1 {
                                 emit( { Seen => $v }  )
                             }
                         }
                     }
                 }
               );
}

$second-supply.tap( -> $v { say "Second : $v" }, done => { say "No more" });
