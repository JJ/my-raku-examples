#!/usr/bin/env raku

constant ITEMS = 100;
for 1..15 -> $iter {
    my $lock = Lock.new;
    my $cond = $lock.condition;
    my $todo = 0;
    my $done = 0;
    my @in = 1..ITEMS;
    my @out = 0 xx ITEMS;

    for 1..ITEMS -> $i {
        my $in = $i;
        my $out := @out[$i];
        Thread.start( {
                    $out = $in * 10;
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
    say @out;
}
