#!/usr/bin/env perl6

use v6;

sub MAIN( $path = "." ) {

    my %metadata;
    my DateTime $right = DateTime.now;
    for dir($path).grep( / \.p6 $/ ) -> $file {
        my Instant $modified = $file.modified;
        my Instant $accessed = $file.accessed;
        my $duration = $accessed - $modified;
        my $age = $right - DateTime($accessed);
        %metadata{$file} = %( modified => $modified,
                              accessed => $accessed,
                              age => $age,
                              difference => $duration);

    }

    %metadata.keys.map: {
        say $^þ, ", ",
        %metadata{$^þ}<accessed modified age difference>.join(", ");
    };
}


    
