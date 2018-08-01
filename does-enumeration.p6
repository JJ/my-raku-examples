#!/usr/bin/env perl6

class DNA does Enumeration {
    my $DNAindex = 0;
    my %pairings = %( A => "T",
                      T => "A",
                      C => "G",
                      G => "T" );
    
    method new( $base-pair where "A" | "C" | "G" | "T" )  {
        self.bless( key => $base-pair,
                    value => %pairings{$base-pair},
                    index => 33);
    }

    submethod BUILD( :$!key, :$!value, :$!index ) {};

    multi method gist(::?CLASS:D:) {
        return "$!key -> $!value with $!index";
    }

}

for <A C G T>.roll( 16 ) -> $letter {
    my DNA $base = DNA.new( $letter );
    say " Pairs", $base.pair,  " with ", $base.gist;
}



