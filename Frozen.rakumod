my class MetamodelX::Frozen is Metamodel::ClassHOW {

    method compose(Mu $obj) {
        for self.attributes($obj, :local) -> $attr {
            $attr.set_readonly();
        }
        callsame;
    }
}

my package EXPORTHOW {
    package DECLARE {
        constant frozen = MetamodelX::Frozen;
    }
}
