class A {…}

role R {
  has A $!private;

  method !s {
      say $!private!s;
      say $.b;
  }

  method !private-method {
      say "priv method";
  }

  method public-method {
      self!private-method;
  }

  method set_private(A $a) {
      $!private = $a;
  }
}

class A does R {
  has Str $.b = 'secret';
};

class B does R {
  method b { self!s }
}

my $b = B.new();
$b.public-method();
$b.set_private(A.new);
say $b.b;
