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
write documentation. It's a markup language that use `=` to start
commands and `<>` for paragraph-level markup. 

