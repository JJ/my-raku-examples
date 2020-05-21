#!/usr/bin/env raku

my $valur = 3;
die [999, "Pop pop"];
 
CATCH {
    # will definitely catch all the exception 
    default { .Str.say; $valur = 42 }
}
 
say "This won't be said, but $valur"; 
