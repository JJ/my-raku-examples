#!/usr/bin/env perl6

class DNA does Enumeration {
    my %pairings = %( A => "T",
                      T => "A",
                      C => "G",
                      G => "C" );
    
    method new( $base-pair where "A" | "C" | "G" | "T" )  {
        self.bless( key => $base-pair,
                    value => %pairings{$base-pair});
    }

    multi method gist(::?CLASS:D:) {
        return "$!key → $!value";
    }

}

enum Chain ();
constant length = 16;
for <A C G T>.roll( length ) -> $letter {
    my DNA $base = DNA.new( $letter );
    say "Pairs ", $base.pair;
    Chain.HOW.add_enum_value( Chain, $base );
}

for ^length {
    my $base = Chain.pick;
    say "{$base.key} and {$base.value}";
}

