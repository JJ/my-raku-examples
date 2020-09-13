unit class Resourceable;

method gimme(::?CLASS:U: ) {
    %?RESOURCES;
}

method swim-data(::?CLASS:U: ) {
     %?RESOURCES<data/swim.csv>.lines.split(",");
}
