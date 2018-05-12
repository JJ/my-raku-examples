#!/usr/bin/env perl6

use v6;

sub MAIN( $path = "." ) {

    my %metadata;
    for dir($path).grep( / \.p6 $/ ) -> $file {
        my Instant $modified = $file.modified;
        my Instant $accessed = $file.accessed;
        my $duration = $accessed - $modified;
        %metadata{$file} = %( modified => $modified,
                              accessed => $accessed,
                              difference => $duration);
    }

    %metadata.keys.map: {
        say $^þ, ", ",  %metadata{$^þ}<accessed>,  ", ", %metadata{$^þ}<modified>,  ", ", %metadata{$^þ}<difference>
    };
}


    
