use Test;

BEGIN {
  %*ENV{'FOO'} = 'foo';
  %*ENV{'var'} = 'quux';
  say "Setting ENV";
}

use Var;

is( %*ENV<FOO>, 'foo', "Key «FOO» set" );
is( $var, 'quux', "Var in module set");

done-testing;