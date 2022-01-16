my class MetamodelX::Singleton is Metamodel::ClassHOW {

    my $instance;

    method new(*%named) {
        if ($instance.defined) {
            return $instance;
        } else {
            callsame;
        }
    }
}

my package EXPORTHOW {
    package DECLARE {
        constant singleton = MetamodelX::Singleton;
    }
}
