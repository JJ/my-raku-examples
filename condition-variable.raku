#!/usr/bin/env raku

constant ITEMS = 100;
my $lock = Lock.new;
my $cond = $lock.condition;
my $todo = 0;
my $done = 0;
my @in = 1..ITEMS;
my @out = 0 xx ITEMS;

loop ( my $i = 0; $i < @in; $i++ ) {
    my $in := @in[$i];
    my $out := @out[$i];
    Thread.start( {
      my $partial = $in² +1;
      if $partial.is-prime {
          $out = $partial but "Prime";
      } else {
          $out = $partial;
      }
      $lock.protect( {
         $done++;
         $cond.signal if $done == $todo;
      } );
    } );
    $todo++;
}
$lock.protect( {
    $cond.wait({  $done == $todo } );
});

say @out.map: { $_.^roles > 2 ?? $_.Num ~ "*" !! $_ };


