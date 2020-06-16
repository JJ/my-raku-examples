#!/usr/bin/env raku

role Custom-Repo {
    has %.distros;
    method need(CompUnit::DependencySpecification $spec,
                CompUnit::PrecompilationRepository $precomp,
                CompUnit::PrecompilationStore :@precomp-stores
                --> CompUnit:D
                )
     {
	 say $spec;
	 %!distros{$spec}++;
	 self.next-repo.need( $spec, $precomp, :@precomp-stores);
     }
}

BEGIN {
    $*REPO does Custom-Repo;
}

use Test;
use NativeCall;

say $*REPO.distros;
