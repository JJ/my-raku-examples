#!/usr/bin/env perl6

my Channel $c .= new;
$c.send($_) for ^40;
$c.close;
my Channel $c2 .= new;
my $count = 100;

my $work = start react whenever $c.List.rotor(2) -> @item {
    $c2.send( @item );
    CATCH {
	default {
	    $c2.fail($_)
	}
    }
};

my $more-work = start react whenever $c2 -> @item {
    if ( $count++ < 100 ) {
	$c.send( sum @item );
    } else {
	$c.close;
    }

}
.say for $c2.List;
await $more-work;
