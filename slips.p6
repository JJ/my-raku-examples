dd my @a = 1, |(2, 3); # OUTPUT: «Array @a = [1, 2, 3]»

dd my @b = do {@a[2] := |(3, 4); @a} # OUTPUT: «Array @b = [1, 2, slip(3, 4)]»

dd my @c = do  {@a[3] := $(3,4); @a }
say @b[];
