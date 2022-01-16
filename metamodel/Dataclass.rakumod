my class MetamodelX::Dataclass is Metamodel::ClassHOW {

    method add_method($obj, $name, $code_obj) {
        self.add_method( $obj, $name,
                -> { die "Data classes have no methods"} );
        callsame();
    }
}

my package EXPORTHOW {
    package DECLARE {
        constant dataclass = MetamodelX::Dataclass;
    }
}
