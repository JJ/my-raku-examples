#!/usr/bin/env raku

my @s=<1 1 2 2 1 3>;
my $k=2;
my $res=0;
for ^@s -> $i {
    my $seen = 0;
    my %window;
    for @s[$i..*] -> $c {
	if $c == %window.keys.none {
            $seen++;
            %window{$c} = 1;
	} else {  
            %window{$c} += 1;
	}
	if %window{$c} == $k {
            $seen--;
            if $seen == 0 {
		$res++;
	    }
	} elsif %window{$c} > $k {
            last;
	}
    }
}
say $res;
