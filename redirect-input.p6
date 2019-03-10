#!/usr/bin/env perl6

use v6;

class IO::Store is IO::Handle {
    has @.lines = [];
    has $.cursor = 0;

    submethod TWEAK {
        self.encoding: 'utf8'; # set up encoder/decoder 
    }
    
    method WRITE(IO::Handle:D: Blob:D \data --> Bool:D) {
        @!lines.push: data;
        True;
    }

    method !join() {
        my Buf $everything;
        for @!lines -> $b {
            $everything ~= $b;
        }
        return $everything;
    }
    
    method READ(IO::Handle:D: Int:D \bytes --> Buf:D) {
        my Buf $everything = self.join();
        if $!cursor + bytes < $everything.size {
            my $result = $everything.splice( $!cursor, bytes );
            $!cursor = $!cursor + bytes;
            return $result;
        } 
            
    }

    method EOF {
        my $everything = self.join();
        if $!cursor < $everything.size {
            return False;
        } else {
            return True;
        }
    }
        

    method gist() {
        return @!lines.map( *.decode ).join("\n" );
    }
}

my $store := IO::Store.new();

$store.print( $_ ) for <one two three>;

say $store;

say "Reading";


.decode.say for $store.lines();
