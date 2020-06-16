#!/usr/bin/env raku

role Custom-Repo {
    has %.distros;
    method need(CompUnit::DependencySpecification $spec,
                CompUnit::PrecompilationRepository $precomp = self.precomp-repository()
                --> CompUnit:D
                )
     {
	 say $spec;
	 %!distros{$spec}++;
	 return self.next-repo.need($spec, $precomp) if self.next-repo;
     }
}

BEGIN {
    $*REPO does Custom-Repo;
}

use Test;
use NativeCall;

say $*REPO.distros;
