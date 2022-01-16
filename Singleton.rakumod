my class MetamodelX::Singleton is Metamodel::ClassHOW {

    my $instance;

    method new(*%named) {
        say "new called with %named<> and $instance";
        if (!$instance.defined) {
            $instance = callsame;
        }
        $instance;
    }
}

my package EXPORTHOW {
    package DECLARE {
        constant singleton = MetamodelX::Singleton;
    }
}
