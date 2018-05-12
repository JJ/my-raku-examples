#!/usr/bin/env perl6

use v6;

sub MAIN( $path = ".", $extension = "p6" ) {

    my %metadata;
    my DateTime $right = DateTime.now;
    for dir($path).grep( / \.$extension $/ ) -> $file {
        my Instant $modified = $file.modified;
        my Instant $accessed = $file.accessed;
        my $duration = $accessed - $modified;
        my $age = $right - DateTime($accessed);
        my $time-of-day = $file.changed.DateTime.hh-mm-ss but Dateish;
        my $file-changed-date =  $file.changed.Date;
        %metadata{$file} = %( modified => $modified,
                              accessed => $accessed,
                              age => $age,
                              difference => $duration,
                              changed-tod => $time-of-day,
                              changed-date => $file-changed-date);

    }

    %metadata.keys.map: {
        say $^þ, ", ",
        %metadata{$^þ}<accessed modified age difference changed-tod changed-date>.join(", ");
    };
}


    
