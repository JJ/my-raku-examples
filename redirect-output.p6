#!/usr/bin/env perl6

use v6;

class IO::Store is IO::Handle {
    has @.lines = [];

    submethod TWEAK {
        self.encoding: 'utf8'; # set up encoder/decoder 
    }
    
    method WRITE(IO::Handle:D: Blob:D \data --> Bool:D) {
        @!lines.push: data.decode();
        True;
    }

    method gist() {
        return @!lines.join("\n" );
    }
}

my $store = IO::Store.new();

my $output = $PROCESS::OUT;

$PROCESS::OUT = $store;

.say for <one two three>;

$PROCESS::OUT = $output;

say $store.lines();
