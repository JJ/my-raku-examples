#!/usr/bin/env perl6

use v6;

my &cards = ->  {
    my @cards = 1..10 X~ <♠ ♥ ♦ ♣>;
    emit($_) for @cards.pick(@cards.elems);
}
my $supply = supply cards;

$supply.tap( -> $v { say "Drawing: $v" });
$supply.tap( -> $v { say "Drawing: $v" }, done => { say "No more cards" });
