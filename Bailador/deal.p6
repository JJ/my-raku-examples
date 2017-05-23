#!/usr/bin/env perl6

use Bailador;
use JSON::Tiny;

my %suits =  :H<♥>, :D<♦>, :C<♣>, :S<♠>;
my $cards = set();

put "/(.+)" => sub ($card) {
    my $suit = %suits{substr($card,*-1)};
    my $this-card = $card.chop ~ $suit; 
    $cards  ∪= $this-card ;
    return to-json { card => $this-card};
}

get "/" => sub {
    return to-json { card => $cards.pick };
}

baile;
