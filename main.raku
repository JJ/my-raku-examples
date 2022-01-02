

BEGIN {
  %*ENV{'bar'} = 'quux';
  say "Setting ENV";
}

use Bar;

say "bar is $bar";

