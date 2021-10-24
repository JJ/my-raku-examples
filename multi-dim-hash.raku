#!/usr/bin/env raku

my @tracks = ['love is love','love is in the air', 'love love love'];
my %counts;
for @tracks -> $title {
    $_ = $title;
    my @words = split(/\s/, $_);
    if (@words.elems > 1) {
        my $i = 0;
        while (@words.elems - $i > 1) {
            my %wordHash = ();
            %wordHash{@words[$i + 1]} = 1;
            %counts{@words[$i]} = %wordHash;
            say %counts{@words[$i]}{@words[$i+1]};
            say %counts.kv;
            $i = $i + 1;
        }
    }
}