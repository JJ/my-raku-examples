#!/usr/bin/env perl6

my @files = <a.txt b.txt c.txt d.txt e.txt /etc/hosts>;
say 'Exists: ', @files.grep: *.IO.e;

my @unlinked-files = unlink @files;
say 'All: ', @files;
say 'Removed: ', @unlinked-files;

my @error-files = @files.Set (-) @unlinked-files.Set;

say 'Problems: ', @error-files;

'/var/log/dpkg.log.9.gz'.IO.unlink;

