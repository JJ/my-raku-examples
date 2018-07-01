#!/usr/bin/env perl6

use v6;

{
    my $x = +"a";
    say $x.^name;
    CATCH { default { say "Caught {.^name}" } }
} # OUTPUT: «Failure␤» 
 
try {
    my $x = +"a";
    say $x.^name;
    CATCH { default { say "Caught {.^name}" } }
} # OUTPUT: «Caught X::Str::Numeric␤» 
