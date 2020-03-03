#!/usr/bin/env raku

use Text::CSV;

my $text = q:to/EOF/;
ID	Name	Email
   1	test	test@email.com
 321	stan	stan@nowhere.net
EOF
my @data = $text.lines.map: *.split(/\t/).list;

say @data.perl;

my $csv = csv( in => @data, key => "ID");

print $csv.perl;

