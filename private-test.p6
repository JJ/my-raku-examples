role Privateer {
    method test-private-method ( $method-name, |c  ) {
	self!"$method-name"(|c);
    }
}

class Privateed does Privateer {
    method !private() { return "⌣"  }
}

class Random {
    method !private() { return "⛔" }
}
my $obj = Privateed.new;
say $obj.test-private-method( "private" );

$obj = Random.new;
$obj does Privateer;
say $obj.test-private-method( "private" );

$obj = Random.new but Privateer;
say $obj.test-private-method( "private" );






