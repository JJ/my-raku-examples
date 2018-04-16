#!/usr/bin/env perl6

use v6;

sub MAIN( $ch = 23 ) {
    given $ch  {
	when Int and * > 10 { say 65}
	when '+' { say 1  }
	when '-' { say -1 }
	default  { say 0  }
    }
}
