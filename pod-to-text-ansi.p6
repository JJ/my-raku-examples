use v6;

use Pod::To::Text;

%*ENV<POD_TO_TEXT_ANSI> = 1;
say pod2text( $=pod );


=begin pod

=head1 SYNOPSIS

my_test_command I<filename> [OPTIONS]

=head1 ARGUMENTS

=item I<filename>

File name to test

=head1 OPTIONS

=item B<--help>

Prints help

=head1 DESCRIPTION

A sample test command with embedded Pod

=begin code
use v6;

say "Hello";

for ^10 -> $v { say $v+1 }
=end code

=end pod
