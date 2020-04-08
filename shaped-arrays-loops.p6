
for (1..19).rotor(3, :partial).map( { Array.new(:shape(3),$_ ) } ) -> @m { say @m; }
