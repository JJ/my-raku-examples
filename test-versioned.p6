BEGIN {
    class Versioned { }
    Versioned.^set_ver:  '0,0,1';
    Versioned.^set_auth: 'github:Kaiepi';
    Versioned.^set_api:  IntStr.new: 0, '0';
}
say Versioned.^ver;  # OUTPUT: «0.0.1␤»
say Versioned.^auth: # OUTPUT: «github:Kaiepi␤»
say Versioned.^api:  # OUTPUT: «0␤»
