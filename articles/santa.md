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
whitespace `\h`.
