#!/usr/bin/env raku


@*ARGS.append("bar");
my $handle=CompUnit::Loader.load-source-file("foo.p6".IO);
say $handle.globalish-package<$foo>;
@*ARGS.append("baz");
$handle=CompUnit::Loader.load-source-file("foo.p6".IO);
say $handle.globalish-package<$foo>;

