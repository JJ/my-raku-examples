role Privateer {
    method test-method ( $method-name, *@args ) {
	say self.^methods;
	my $method = self.^find_method($method-name)[0];
	say $method;
	$method( @args );
    }
}

class Privateed {
    method !private() { return "⌣"  }
    method public() { return "✓" };
    method methods() { return self.^methods };
    method is-found($method ) { return self.^find_method( $method ); }
}

my $obj = Privateed.new;
say $obj.methods;
say $obj.is-found( "private" );
say $obj.is-found( "public" );
say $obj.^methods.raku;

say $obj.test-method( "private" );
