grammar MyGrammar {

    token TOP {
        <character>
    }

    token character {
         \n \n <( LUKE
    }
}

say MyGrammar.subparse("\n\nLUKE");
