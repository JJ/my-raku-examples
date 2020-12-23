#!/usr/bin/env raku

class DNA does Iterable {
    has $.chain;
    method new ($chain where { $chain ~~ /^^ <[ACGT]>+ $$ / } ) {
        self.bless( :$chain );
    }

    method iterator(DNA:D:) {
        $!chain.comb.rotor(3).iterator;
    }
}

my $a := DNA.new('GAATCC');
my $b := DNA.new('ATCATC');
say $a;
say $a Z $b;

my @a = DNA.new('AGCCGA');
say @a;
say @a.^name;

my DNA \a = DNA.new('AGCCGA');
say a;
say a.^name;


my DNA $dna = DNA.new('AGCCGA');
say $dna;
say $dna.^name;



my $dna2 = DNA.new('AGCCGA');
say $dna2;
say $dna2.^name;

say "For a";
.say for a;

say "For DNA \$dna";
.say for $dna;

say "For \$dna2";
.say for $dna2;
