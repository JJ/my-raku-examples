#!/usr/bin/env perl6

# Example from https://www.learningperl6.com/2017/04/18/the-24-puzzle-in-perl-6-using-channels-and-promises/

sub MAIN (*@) {
	my $goal       = @*ARGS.pop;
	my @numbers    = @*ARGS.clone.flat;
	my @operations = < + - * / >;

	# I need N - 1 operators, with repeats (so, + + + is fine)
	my @cross = [X] @operations xx (@numbers.elems - 1);
	my @perms = @numbers.permutations.unique( :with(&[eqv]) );

	put "Total candidates: " ~ ( @cross.elems * @perms.elems );

	my $channel = Channel.new;

	my @p;
	my $total = 0;
	for 1 .. 1 {
		@p.push: start {
			react  {
				whenever $channel -> $item {
					state $count = 0; $count++;
					my $result = evaluate( $item );
					put "SOLUTION! $result[*-1] = $goal" if $result[0] == $goal;
					LAST {
						$total += $count;
						put "Thread {$*THREAD.id} handled $count candidates"
						}
					}
				}
			};
		}

	my $start = now;
	put "Starting to send to channels";
	for @perms X @cross -> $i {
		$channel.send( $i )
		}
	put "Done sending to channels: " ~ (now - $start) ~ " seconds";

	$channel.close;

	await |@p;

	put "Total handled was $total";
	}

sub evaluate ( $item ) {
	my @digits  = $item[0].flat;
	my @ops     = $item[1].flat;

	my @ops2 = ( |@ops, '' );

	my $string = @digits >>~<< @ops2;

	while @ops.elems > 0 {
		splice(
			@digits, 0, 2,
			op( @ops.shift, |@digits[0,1] )
			);
		}

	return [ @digits[0], $string ];
	}

multi op ( '+', $m, $n ) { $m + $n }
multi op ( '-', $m, $n ) { $m - $n }
multi op ( '/', $m, $n ) { $m / $n }
multi op ( '*', $m, $n ) { $m * $n }
