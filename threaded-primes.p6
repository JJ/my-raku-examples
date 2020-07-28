#!/usr/bin/env raku

constant $interval = 100000;

my @threads = (^10).map: -> $i {
    Thread.start(
        name => "Checking primes from {$i * $interval } to { ($i+1)*$interval}",
        sub {
            for ($i * $interval)..^(($i+1)*$interval) -> $n {
		next if ( $n %% 2 ) | ( $n %% 3 ) | ($n %% 5 );
		say "Prime $n found in $*THREAD" if $n.is-prime;
	    }
        },
    );
}
 
.finish for @threads;
