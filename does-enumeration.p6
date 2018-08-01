#!/usr/bin/env perl6

class DNA does Enumeration {
    my $DNAindex;
    my %pairings = %( A => "T",
                      T => "A",
                      C => "G",
                      G => "T" );
    
    method new( $base-pair where "A" | "C" | "G" | "T" )  {
        self.bless( key => $base-pair,
                    value => %pairings{$base-pair},
                    index => $DNAindex++);
    }

}

my DNA $base = DNA.new("G");
for <A C G T>.pick( 16 ) -> $letter {
    my DNA $base = DNA.new( $letter );
    say $base.pair,  " preceded by ", $base.pred.pair;
}



