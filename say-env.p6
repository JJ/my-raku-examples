#!/usr/bin/env raku

say "Args → ", @*ARGS;
our $collated-args is export = @*ARGS.join;
say "Env ⇒", %*ENV;
