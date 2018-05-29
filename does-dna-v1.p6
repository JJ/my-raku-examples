role DNA does Iterable {
    method iterator(){ self.comb.iterator }
};
 
my @a does DNA = 'GAATCC';
.say for @a; # OUTPUT: «G␤A␤A␤T␤C␤C␤»
