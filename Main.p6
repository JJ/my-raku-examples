#!/usr/bin/env perl6

#|(optional description for USAGE message)
sub MAIN( Int :$length = 24,
          :file($data) where { .IO.f // die "file not found in $*CWD" } = 'file.dat',
	Bool :v(:$verbose) #`( either --verbose or -v ) ) {
    say $length if $length.defined;
    say $data   if $data.defined;
    say 'Verbosity ', ($verbose ?? 'on' !! 'off');
    
    exit 1;
}
