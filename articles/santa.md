# Like 6 Perls in a Pod: document everything

Christmas season was approaching, and Santa was in a gloomy
mood. His inbox was full with letters from boys and girls coming from
all over.

But.

Were they letter to Santa? Was the kid properly identified by signature, so that
you sent the gifts to the proper person and not someone else who might
not deserve them? Were them addressed to Santa, and not any of those
impostors, the Easter Bunny, or, even worse, the Three
So-Called-I-don't-know-why-Wise-Men from Orient? Worst of all, did
*he* personally have to check all that stuff all by his royal and
hallowed self?

No.

Perl 6 came to the rescue with the following
[grammar](https://docs.perl6.org/syntax/Creating%20grammars):

```perl6
unit grammar Santa-Letter;

token TOP { <dear> \v+ <paragraph> [\v+ <paragraph>]* \v+ <signature>\v*}
token paragraph { <superword>[ \h+ <superword>]+ }
token superword { <word> | <enhanced-word> }
token word { \w+ }
token enhanced-word { <word> [\,|\.|\:] }
token dear {Dear \h+ [S|s]anta [\,|\:]? }
token signature {\h+ \w+ \h* \w* }
```

This [unit](https://docs.perl6.org/syntax/unit) declares a letter to
Santa as a salutation, followed by one or more paragraphs, and
finally, a `signature`, which should be preceded by an horizontal
whitespace as indicated by `\h`.

Letters such as this one:

```
Dear Santa:

This year I have been a really good boy, I have been in all Squashathons.

So I want a plush Camelia studded with diamonds.

 JJ
```

A simple script will use that grammar and get the signature in a
single letter:

```perl6
use Santa-Letter;

sub MAIN ( Str $file = "letter.txt" ) {
    my $letter =$file.IO.slurp;
    my $parsed = Santa-Letter.parse($letter);
    say $parsed<signature>.trim;
}
```

That was good and well, but Santa needed to get that data into the
North Pole's CRM together with the letter and index everything up, and
at the same time he had to deal with suppliers for whom the trade
wards had brought havoc... So he he called his closest IT elf and ask
him, in so many words, to do that kind of thing.

After that speech, the IT elf stood there, his ears aquiver.

"What?", santa growled. In a hallowed way, of course.

The pointed part of the ears reddened and, with the quivering,
irradiated heat so that a small icicle melted and fell down to the
earth.

"You can read the source, right?"

Rudolf, who had been awakened by the noise of the icicle melting,
because that was one of his superpowers, intervened

## Most people can read source, but everyone can read the documentation.

Said Rudolph.

"And everyone should write that documentation, too", admonished,
bobbing his head with the red-tipped nose on the front.

Santa mumbled, but eventually checked out the master branch of his
Santa-Letter grammar and set down to work on it. Using, of course, Pod
6

## Pod 6 stands for "Plain Old documentation for Perl 6"

And it (clearly) not an
acronym. [Pod6](https://docs.perl6.org/language/pod) is a DSL that helps Perl 6 coders
write documentation. It's a markup language that uses `=` to start
commands and `<>` for paragraph-level markup. We'll get to that, but
for the time being, Santa realized that one of the best things was how
it integrates with Perl 6 itself. So he did a second iteration of his
examining program thus:

```perl6
#| This reads a letter file
sub MAIN ( Str $file = "letter.txt" ) {
    my $letter =$file.IO.slurp;
    my $parsed = Santa-Letter.parse($letter);
    say $parsed<signature>.trim;
}
```

There's a funny sign, `|`, in that comment. That sign ties it to the
code behind the comment. And in this case, it's the `MAIN` sub.

Santa released to production the program. The IT elf tried to run the
program,

	./get-signed.p6 --help

and he obtained:

```
Usage:
  ./get-signed.p6 [<file>] -- This reads a letter file
```

"Some documentation is better than no documentation", he thought. But
that was not nearly enough. He entered the North Pole ticketing
system, based entirely in free software, and he requested more
documentation and assigned the task to Santa. Santa protested loudly,
but complied.

```perl6
#|{ This reads a letter file in text format.
With no arguments, it will read the C<letter.txt> file.
}
sub MAIN ( Str $file = "letter.txt" ) {
    my $letter =$file.IO.slurp;
    my $parsed = Santa-Letter.parse($letter);
    say $parsed<signature>.trim;
    say $=pod[0].perl;
}
```

This printed the same message when invoked with `--help`. And it was
documentation. When running

    perl6 --doc get-signed.p6

it printed:

```
sub MAIN(
	Str $file = "letter.txt", 
)
This reads a letter file in text format. With no arguments, it will read the C<letter.txt> file.
```

So Perl 6 understands the comment and the code attached to it, and
automatically pretty-prints both. Documenting a routine  is as easy as
this.

Besides, when run on an actual file, the last sentence kicked it, and
it printed:

```
Pod::Block::Declarator.new(WHEREFORE => sub MAIN (Str $file = "letter.txt") { #`(Sub|81308800) ... }, config => {}, contents => [])
```

Unlike other DSLs used for comments in other languages, such as
Markdown or Pod itself in Perl 5, Pod 6 not only is a DSL for
comments, it's part of Perl 6 itself, and thus, it's interpreted by
the Perl 6 parser, its internal structures available for introspection
in the `$=pod` variable. In this case, the comment is a
[`Pod::Block::Declarator`](https://docs.perl6.org/type/Pod::Block::Declarator),
and that data structure includes the `WHEREFORE` key which contains
the declared function and the comment. However, `contents` and
`config` are empty. Which they shouldn't.

What's more, the little bit of actual formatting used in the comment
does not work. Now it was Santa who was not happy. 
