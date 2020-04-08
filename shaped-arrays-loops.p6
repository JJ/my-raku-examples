subset Vector3 of Array where .shape[0] ==3;

for (1..19).rotor(3, :partial) -> Vector3 @m { say @m; } # works, but I cannot specify size of @m
