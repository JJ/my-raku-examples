#!/usr/bin/env perl6

use Compress::Zlib;

sub object-read( $repo, $sha ) {
    my $path = $repo ~ "/objects/" ~ $sha.substr(0, 2) ~ "/" ~
               $sha.substr(2, *);

    given slurp($path, :bin) -> $f {
        say uncompress($f).elems;
        my $raw = uncompress($f).decode('utf8-c8'); # Probable error here?!
        say $raw;
        return $raw.chars;
    }

}

put object-read(".git", "13a128fbc5f3c1c072b46924186b00d192913055")
