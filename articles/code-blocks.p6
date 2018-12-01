#!/usr/bin/env perl6

use v6;

use MONKEY-SEE-NO-EVAL;

use Data::Dump;

use lib <../grammars>;

use Santa-Letter;

for $Santa-Letter::pod.contents -> $block {
    next if $block !~~ Pod::Block::Code;
    say Dump($block.config);
    if $block.config<notest> {
        say "→ Block\n\t"~ $block.contents
            ~ "\n\t\tNot tested since \'" ~ $block.config<reason> ~ "\'";
    } else {
        my $code = $block.contents.join("");
        EVAL $code;
        say "→ Block\n\t"~ $block.contents;
        if ( $! ) {
            say "\n\tProduces error \"$!\"";
        } else {
            say "is OK";
        }
    }
}

