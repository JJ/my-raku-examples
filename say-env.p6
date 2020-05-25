#!/usr/bin/env raku

sub MAIN( $foo ) {
    say "Args → ", @*ARGS;
    our $collated-args is export = @*ARGS.join;
    say "Env ⇒", %*ENV;
}
