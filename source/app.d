import ciel;

import fadet.editor;

void main() {
    Ciel ciel = new Ciel(1280, 720, {
        Theme theme;
        theme.font = getDefaultFont();
        theme.background = Color.fromHex(0x1e1e1e);
        theme.surface = Color.fromHex(0x252526);
        theme.container = Color.fromHex(0x2d2d30);
        theme.foreground = Color.fromHex(0x3e3e42);
        theme.neutral = Color.fromHex(0x57575c);
        theme.accent = Color.fromHex(0x007acc);
        theme.danger = Color.fromHex(0xcc0000);
        theme.onNeutral = Color.fromHex(0xffffff);
        theme.onAccent = Color.fromHex(0xffffff);
        theme.onDanger = Color.fromHex(0xffffff);
        theme.corner = 8f;
        return theme;
    }, "Fadet");

    MenuBar bar = new MenuBar;
    bar.add("Fichier", "Nouveau");
    bar.addSeparator("Fichier");
    bar.add("Fichier", "Enregistrer");
    bar.add("Fichier", "Enregistrer Sous…");
    bar.addSeparator("Fichier");
    bar.add("Fichier", "Quitter");

    
    bar.add("Editer", "Nouveau");
    bar.addSeparator("Editer");
    bar.add("Editer", "Enregistrer");
    bar.add("Editer", "Enregistrer Sous…");
    bar.addSeparator("Editer");
    bar.add("Editer", "Quitter");

    auto a = new Editor;
    ciel.addUI(a);
    ciel.addUI(bar);


    ciel.run();
}
