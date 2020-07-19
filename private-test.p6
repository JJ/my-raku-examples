role Privateer {
    method test-method ( $method-name, *@args ) {
	self."!$method-name".(@args);
    }
}

class Privateed does Privateer {
    method !private() { return "⌣"  }
    method public() { return "✓" }
    method call-method( $method-name )  {
	self."$method-name"();
    }
}

my $obj = Privateed.new;
say $obj.call-method( "public" );
say $obj.call-method( "!private" );


