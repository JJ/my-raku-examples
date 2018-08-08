#!/usr/bin/env perl6

my %pairings = %( A => "T",
                  T => "A",
                  C => "G",
                  G => "C" );


constant length = 3;
enum Chain ( A => "T", G => "C", T => "A");
for ^length {
    my $base = Chain.pick;
    say "{$base.key} with {$base.value} and {$base.succ.pair}";
}
say Chain.^enum_values;

enum Chain2 ();
for <A C G T>.pick( length ) -> $letter {
    Chain2.HOW.add_enum_value( Chain2, $letter => %pairings{$letter} );
}

for ^length {
    my $base = Chain2.pick;
    say "{$base.key} with {$base.value}";
}
say Chain2.^enum_values;
