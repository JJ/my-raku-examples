use Text::CSV;

say csv(in => "chickpea-rice.csv".IO,  sep => ';', headers => "auto", key => "Ingredient" );
