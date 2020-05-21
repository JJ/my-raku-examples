#!/usr/bin/env raku

class X::Here is Exception {}

sub foo {
    X::Here.new.throw;
}
my $valur = foo;

CATCH {
    # will definitely catch all the exception 
    default { .Str.say; $valur = 42 }
}
 
say "This won't be said, but $valur"; 
