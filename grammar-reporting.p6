use  Grammar::ErrorReporting;

grammar G does Grammar::ErrorReporting {
    token TOP     {  "*" | "-" | "✅"  \h+ <ingredient> }
    token ingredient      { <quantity> \h* <unit>? }
    token quantity { <:N>+ }
    token unit      { "g" | "tbsp" | "clove" | "tbsps" | "cloves" }
}

say G.parse( "+ food");
