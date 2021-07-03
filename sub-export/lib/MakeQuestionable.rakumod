sub EXPORT(::Questionable) {
    my multi postfix:<?>(Questionable $_) { .so };
    Map.new: '&postfix:<?>' => &postfix:<?>,
}
