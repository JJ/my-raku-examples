my $a = "39 3A 3B  9:;";
say $a.split(/\s+/).grep: * ~~ /<< <[0..9 A..F]> ** 2 >>/;
