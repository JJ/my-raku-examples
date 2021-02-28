#!/usr/bin/env raku

say S:g /\{\: "lang" \= \" (\w+) \" \} /```$0/ given "text.md".IO.slurp;
