

my $foo = 7;

my $bar = qq:to/END/;
\{ $foo\@hey
END

say $bar;
	       
