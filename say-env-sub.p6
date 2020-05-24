#!/usr/bin/env raku

sub MAIN( :$env, :$arg ) {
    say "Args → ", @*ARGS if $env;
    say "Env ⇒", %*ENV if $arg;
}
