#!/usr/bin/env perl6

my Channel $c .= new;
my Channel $c2 = $c.Supply.batch( elems => 2).Channel;
my $count = 0;
$c.send($_) for ^40;

my $work = start react whenever $c -> $item {
    $c.send( $item );
    say "This is $item";
}

my $more-work = start react whenever $c2 -> @item {
    if ( $count++ < 100 ) {
	$c.send( sum @item );
    } else {
	$c.close;
    }

}
await $more-work;
.say for $c2.List;

