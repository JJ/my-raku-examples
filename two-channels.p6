#!/usr/bin/env perl6

use v6;

my $length = 512;
my Channel $channel-one .= new;
my Channel $to-mix .= new;
my Channel $mixer = $to-mix.Supply.batch( elems => 2).Channel;

my @promises;
for ^4 {
    $channel-one.send( 1.rand xx $length );
    my $promise = start react whenever $channel-one -> @crew {
        my @new-crew = @crew;
        @new-crew[@new-crew.elems.rand] = 1;
	if ( sum(@new-crew) < $length ) {
	    say "Emitting  in thread ", $*THREAD.id, " Best ", sum(@crew)  ;
	    $to-mix.send( @new-crew );
	} else {
            say "Found: closing";
            $channel-one.close;
            say "Closed";
        };
    }
    @promises.push: $promise;

}

my $pairs = start react whenever $mixer -> @pair {
    $to-mix.send( @pair.pick ); # To avoid getting it hanged up
    my @new-population =  crossover-frequencies( @pair[0], @pair[1] );
    $channel-one.send( @new-population);
    say "Mixing in ", $*THREAD.id;
};
    
start { sleep 30; exit };  
await @promises;
say "Finished";

# Cross over frequencies
sub crossover-frequencies( @frequencies, @frequencies-prime --> Array ) is export {
    my @pairs = @frequencies Z @frequencies-prime;
    my @new-population =  gather {
        for @pairs -> @pair {
            take @pair.pick;
        }
    };
    return @new-population;
}
