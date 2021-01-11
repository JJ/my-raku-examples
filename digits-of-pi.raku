#!/usr/bin/env raku

my $digits-of-ᴨ = Channel.new;

my &sequence-gap-four = { $^α, $^α+4 … ∞ };

my @σ-plus = sequence-gap-four( 5 );
my $one = start {
    while my $σ = shift @σ-plus {
        $digits-of-ᴨ.send( 1.0 / $σ )
    };
}

my @σ-minus = sequence-gap-four( 3 );
my $two = start {
    while my $σ = shift @σ-minus {
        $digits-of-ᴨ.send( -1.0 / $σ )
    };

}

my $ᴨ-so-far = 1;
my $p = start {
    react {
        whenever $digits-of-ᴨ -> $ε {
            atomic-assign( $ᴨ-so-far, atomic-fetch( $ᴨ-so-far ) + $ε);
            say $ᴨ-so-far*4;
        }
    }
}

await $p, $one, $two;
