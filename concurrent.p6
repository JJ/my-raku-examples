#!/usr/bin/env perl6

my Channel $c .= new;
my Channel $c2 = $c.Supply.batch( elems => 2).Channel;
my Channel $output .= new;
my $count = 0;
$c.send(1);
$c.send(1);

my $work = start react whenever $c -> $item {
    $c.send( $item );
    $output.send( $item );
}

my $more-work = start react whenever $c2 -> @item {
    if ( $count++ < 32 ) {
        $c.send( @item[1]);
	$c.send( sum @item );
    } else {
	$c.close;
    }

}
await $more-work;
.say for $output.List;


