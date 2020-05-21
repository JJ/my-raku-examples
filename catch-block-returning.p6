#!/usr/bin/env raku

class X::Here is Exception{}

my $valur = 3;
sub foo {
    X::Here.new.throw;
}
foo;

CATCH {
    # will definitely catch all the exception 
    default { .Str.say; $valur = 42 }
}
 
say "This won't be said, but $valur"; 
