BEGIN {
    class Versioned { }
    Versioned.^set_ver:  v0.0.1;
    Versioned.^set_auth: 'github:Kaiepi';
    Versioned.^set_api:  <1>;
}
say Versioned.^ver;  # OUTPUT: «v0.0.1␤»
say Versioned.^auth; # OUTPUT: «github:Kaiepi␤»
say Versioned.^api;  # OUTPUT: «1␤»
