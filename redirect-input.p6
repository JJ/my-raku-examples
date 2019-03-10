#!/usr/bin/env perl6

use v6;

class IO::Store is IO::Handle {
    has @.lines = [];

    submethod TWEAK {
        self.encoding: 'utf8'; # set up encoder/decoder 
    }
    
    method WRITE(IO::Handle:D: Blob:D \data --> Bool:D) {
        @!lines.push: data;
        True;
    }

    method whole() {
        my Buf $everything = Buf.new();
        for @!lines -> $b {
            $everything ~= $b;
        }
        return $everything;
    }
    
    method READ(IO::Handle:D: Int:D \bytes --> Buf:D) {
        my Buf $everything := self.whole();
        return $everything;
    }

    method EOF {
        my $everything = self.whole();
        !$everything;
    }

    method gist() {
        return @!lines.map( *.decode ).join("\n" );
    }
}

my $store := IO::Store.new();

$store.print( $_ ) for <one two three>;

say $store;

say "Reading";

say $store.read(3).decode;
say $store.read(3).decode;
