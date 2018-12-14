#!/usr/bin/env perl6

use v6;

use nqp;

my $io=$*PROGRAM-NAME.IO;
my $precomp-store = CompUnit::PrecompilationStore::File.new();
my $precomp = CompUnit::PrecompilationRepository::Default.new(store => $precomp-store);

my $id = nqp::sha1(~$*PROGRAM-NAME);
my $handle = $precomp.load($id)[0];

without $handle {
    $precomp.precompile($io, $id, :force);
    $handle = $precomp.load($id)[0] // fail("Could not precompile");
}

say nqp::atkey($handle.unit,'$=pod')[0];


