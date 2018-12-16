#!/usr/bin/env perl6

use v6;

use nqp;

my $precomp-store = CompUnit::PrecompilationStore::File.new(prefix => "/tmp".IO);

our $precomp = CompUnit::PrecompilationRepository::Default.new(store => $precomp-store);
my $file = "./test.pm6";
my $io = $file.IO;
my $id = nqp::sha1(~$file);

my $handle = $precomp.load($id)[0];
without $handle {
    $precomp.precompile($io, $id, :force);
    $handle = $precomp.load($id)[0] // fail("Could not precompile $file for $!");
}
