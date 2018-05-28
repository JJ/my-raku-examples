#!/usr/bin/env perl6
# There is a thread to populate $dir-channel by reading filenames in a directory with dir()
# and $N worker threads to read the filenames from the $dir-channel.

sub MAIN( Str $dir = ".", Int :$N = 4 ) {

    my $dir-channel = Channel.new();
    my $dir-read = start {
        $dir-channel.send( $_ ) for dir $dir;
        $dir-channel.close;
    }

    my @workers = (^$N).map: {
        start {
            while my $file = $dir-channel.receive() {
                say $file.path;
            }
            CATCH {
                when X::Channel::ReceiveOnClosed { .resume }
            }
        }
    }

    await $dir-read, @workers;
}
