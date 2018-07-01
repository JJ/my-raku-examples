#!/usr/bin/env perl6

say $*REPO.perl;

say $*REPO.repo-chain.perl;

for $*REPO.repo-chain -> $repo {
    say $repo.perl;
}


