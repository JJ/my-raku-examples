use Test;

BEGIN {
  %*ENV{'FOO'} = 'foo';
  %*ENV{'var'} = 'bar';
  say "Setting ENV";
}

use Var;

is( %*ENV<FOO>, 'foo', "Key «FOO» set" );
is( $var, 'bar', "Var in module set");

done-testing;