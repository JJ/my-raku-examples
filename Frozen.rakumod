my class MetamodelX::Frozen is Metamodel::ClassHOW {

    method compose_attributes(Mu \type) {
        for self.attributes(type, :local ) -> $a {
            my $attr = Attribute.new( :0rw, :0has_accessor, :name( $a.name ),
             :type($a.type), :package($a.package));
            self.add_attribute(type, $attr );
        }
        callsame();
    }
}

my package EXPORTHOW {
    package DECLARE {
        constant frozen = MetamodelX::Frozen;
    }
}
