#!/usr/bin/env perl6

my %pairings = %( A => "T",
                  T => "A",
                  C => "G",
                  G => "C" );

class DNA does Enumeration {

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

enum Chain2 ();
for <A C G T>.roll( length ) -> $letter {
    Chain2.HOW.add_enum_value( Chain2, $letter => %pairings{$letter} );
}

for ^length {
    my $base = Chain2.pick;
    say "{$base.key} with {$base.value}";
}
