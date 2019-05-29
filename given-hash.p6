given 3 { say WHAT {3 => 4, :b }  };    # OUTPUT: «(Hash)␤»
given 3 { say WHAT {3 => 4, :b($_) } };   # OUTPUT: «(Block)␤»
given 3 { say WHAT {3 => 4, :b(.Num) } }; # OUTPUT: «(Block)␤»
