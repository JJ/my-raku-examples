role Privateer {
    method test-private-method ( $method-name, |c  ) {
	self!"$method-name"(|c);
    }
}

class Privateed does Privateer {
    method !private() { return "⌣"  }
}

my $obj = Privateed.new;
say $obj.test-private-method( "private" );


