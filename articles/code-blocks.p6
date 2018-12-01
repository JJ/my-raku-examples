#!/usr/bin/env perl6

use v6;

use MONKEY-SEE-NO-EVAL;

use Data::Dump;

use lib <../grammars>;

use Santa-Letter;

for $Santa-Letter::pod.contents -> $block {
    next if $block !~~ Pod::Block::Code;
    if $block.config<notest> {
        say "→ Block\n\t"~ $block.contents
            ~ "\n\t❈ Not tested since \'" ~ $block.config<reason> ~ "\'";
    } else {
        my $code = $block.contents.join("");
        say "→ Block\n\t"~ $block.contents;
        try {
            EVAL $code;
        }
        if ( $! ) {
            say "\n\t✘ Produces error \"$!\"", "\n" xx 2;
        } else {
            say "✔ is OK\n";
        }
    }
}

