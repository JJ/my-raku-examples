my class MetamodelX::Singleton is Metamodel::ClassHOW {

    my \instance = Mu;

    method compose(Mu \type) {
        my &callsame := CORE::<&callsame>; # Workaround for RT #127858
        self.method_table(type)<new>.wrap: -> \SELF, | {
            unless instance.defined { instance = SELF };
            callsame();
        };
    }
}

my package EXPORTHOW {
    package DECLARE {
        constant singleton = MetamodelX::Singleton;
    }
}
