role Privateer {
    method test-method ( $method-name, *@args ) {
	self."!$method-name".(@args);
    }
}

class Privateed does Privateer {
    method !private() { return "⌣"  }
    method call-private( $method-name )  {
	self."!$method-name".();
    }
}

my $obj = Privateed.new;
say $obj.call-private( "private" );

