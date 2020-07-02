grammar MyGrammar {

    token TOP {
        <.separator><character>
    }

    token separator { \n \n }
    token character { <[A..Z]>+  }
}

say MyGrammar.parse("\n\nLUKE");
