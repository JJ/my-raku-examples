#!/usr/bin/env raku

class X::Here is Exception { method message() { "Pop Pop" } }

sub foo {
    X::Here.new.throw;
}
my $valur = foo;
say "This won't be said, but $valur";

CATCH { default { $valur = 42 } }
 

