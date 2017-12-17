#!/usr/bin/env perl6

my $result = Match.new(
    list => (),
    made => Any,
    pos => 10,
    hash => Map.new(
	(:quoted(Match.new(
			list => (),
			made => Any,
			pos => 10,
			hash => Map.new(
			    (:letters(
				 Match.new(
				     list => (),
				     made => Any,
				     pos => 9,
				     hash => Map.new(()),
				     orig => "*enhanced*",
				     from => 1)),
			     :quote(
				 [Match.new(
					 list => (),
					 made => Any,
					 pos => 1,
					 hash => Map.new(()),
					 orig => "*enhanced*",
					 from => 0),
				  Match.new(
				      list => (),
				      made => Any,
				      pos => 10,
				      hash => Map.new(()),
				      orig => "*enhanced*",
				      from => 9)]))),
			orig => "*enhanced*",
			from => 0)))),
    orig => "*enhanced*",
    from => 0)
