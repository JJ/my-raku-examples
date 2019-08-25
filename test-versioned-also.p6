class Versioned:ver<0.0.1>:auth<github:Kaiepi>:api<0> { }
say Versioned.^ver;  # OUTPUT: «0.0.1␤»
say Versioned.^auth: # OUTPUT: «github:Kaiepi␤»
say Versioned.^api:  # OUTPUT: «0␤»
