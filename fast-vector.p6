#!/usr/bin/env perl6
use v6.c;
use NativeCall;
use Terminal::Spinners;
use Math::Libgsl::Vector;

my $list;
my $carray;
my $spinner = Spinner.new;

########## create data stuctures ##########

print "Creating 10e6 element List and CArray  ";
my $list1 = Math::Libgsl::Vector.new(size => 10e6.Int);
$list1.setall(42);
my $list2 = Math::Libgsl::Vector.new(size => 10e6.Int);
$list2.setall(33);

########## time List subtractions ##########

my $time = now;
print "Substracting two 10e6 element Lists w/ hyper  ";
$spinner.await( Promise.start: { $list1.sub( $list2)} );
say "GSL Vector subtraction took: {now - $time} seconds";
