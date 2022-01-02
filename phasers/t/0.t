use Test;

BEGIN {
  %*ENV{'FOO'} = 'foo';
  %*ENV{'BAR'} = 'bar';
  say "Setting ENV";
}

for <foo bar>  -> $k {
  is( %*ENV{uc($k)}, $k, "Key «$k» set" );
}

done-testing;