use Text::CSV;

say csv(in => "chickpea-rice.csv",  sep => ';', headers => "auto", key => "Ingredient" );
