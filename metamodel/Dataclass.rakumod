my class MetamodelX::Singleton is Metamodel::ClassHOW {
    has $!instance;

    method compose(Mu \type) {
        say type.^name;
        self.add_method(type, 'bless', -> \SELF, |c {
            without $!instance {
                $!instance := SELF.Mu::bless(|c);
            }
            $!instance
        });
        callsame();
    }
}

my package EXPORTHOW {
    package DECLARE {
        constant singleton = MetamodelX::Singleton;
    }
}
