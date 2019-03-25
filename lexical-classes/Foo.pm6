unit class Foo;
use Bar;

method foobar { my $bar = Bar.new(); return "foo "~$bar.bar  }
