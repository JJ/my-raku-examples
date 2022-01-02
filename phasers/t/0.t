use Test;

constant VAR = 'baz';

BEGIN {
  %*ENV{'FOO'} = 'foo';
  %*ENV{'var'} = VAR;
  say "Setting ENV";
}

use Var;

is( %*ENV<FOO>, 'foo', "Key «FOO» set" );
is( $var, VAR, "Var in module set");

done-testing;