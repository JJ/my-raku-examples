role R {
  has $!private;

  method !s {
      $!private if $!private;
  }

  method !private-method {
      say "priv method";
  }

  method public-method {
      self!private-method;
  }

  method set_private($a) {
      $!private = $a;
  }
}

class B does R {
  method b { self!s }
}

my $b = B.new();
$b.public-method();
$b.set_private("foo");
say $b.b;
