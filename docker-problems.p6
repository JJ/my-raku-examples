#!/usr/bin/env perl6

#from https://stackoverflow.com/questions/50655174/sleep-in-perl6-doesnt-works-correctly-on-docker

my $x = 1;
while $x < 10 {
    say $x++;
    sleep(1);
}
