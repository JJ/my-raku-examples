#!/usr/bin/env perl6

use lib <../p6-wikidata-API/lib>;

say $*REPO.perl;
say $?REPO;

for $*REPO.repo-chain -> $repo {
    say $repo.perl;
}

