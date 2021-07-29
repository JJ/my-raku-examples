my $list1 = (1, "two", 3, "hat");
my $list2 = (5, 6, "seven");
say $list1[1];                                 # OUTPUT: «two␤»
my $list3 = (slip($list1), slip($list2));
my $list4 = (|$list1, |$list2);                  # equivalent to previous line
say $list3;                                    # OUTPUT: «(1, two, 3, hat, 5, 6, seven)␤»
say $list4;
