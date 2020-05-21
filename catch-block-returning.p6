#!/usr/bin/env raku

class X::Here is Exception { method message() { "Pop Pop" } }

sub foo {
    state $bar = X::Here.new.throw;
    say "Foo";
    $bar = 33;
    return $bar;
}
my $valur = foo;
say "This won't be said, but $valur";

CATCH { default { $valur = foo; .resume } }
 

