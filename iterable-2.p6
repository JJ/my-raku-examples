#!/usr/bin/env perl6

use v6;


class Word-Char does Iterable {
    has @.words;

    method !pairize($item) {
        return $item => $item.chars;
    }

    method iterator( Word-Char:D: ) {
        @!words.map({self!pairize($_)}).rotor(1).iterator
    }
}

my @w = Word-Char.new: words => <the sky is blue>;
sub f( @w ) {
    .say for @w
}
f(@w);

my Word-Char $w := Word-Char.new: words => <the sky is blue>;
sub þ( Word-Char $w ) {
    .say for $w
}
þ($w);
