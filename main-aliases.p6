#!/usr/bin/env perl6

use v6;

sub MAIN( Int :$length = 24,
          :file($data) where { .IO.f // die "file not found in $*CWD" } = 'file.dat',
          Bool :v(:$verbose) #`( -verbose, --verbose, -v or --v ) )
{
    say $length if $length.defined;
    say $data   if $data.defined;
    say 'Verbosity ', ($verbose ?? 'on' !! 'off');
 
    exit 1;
}
