void main() {
  // Erzeuge Werkzeugkoffer Objekt
  Werkzeugkoffer meinWerkzeugkoffer = Werkzeugkoffer([]);

  // Füge Werkzeuge zur Liste hinzu
  meinWerkzeugkoffer.fuegeWerkzeugHinzu('Hammer');
  meinWerkzeugkoffer.fuegeWerkzeugHinzu('Schraubendreher');
  meinWerkzeugkoffer.fuegeWerkzeugHinzu('Zange');

  // Gebe alle Werkzeuge aus
  meinWerkzeugkoffer.zeigeAlleWerkzeuge();

  // Gebe ein Werkzeug bei einem bestimmten Index aus
  String werkzeug = meinWerkzeugkoffer.gibWerkzeugBeiIndex(1);
  print('Werkzeug bei Index 1: $werkzeug');
}

class Werkzeugkoffer {
  // Attribute
  List<String> werkzeuge;

  // Konstruktor
  Werkzeugkoffer(this.werkzeuge);

  // Methode, um ein Werkzeug hinzuzufügen
  void fuegeWerkzeugHinzu(String werkzeug) {
    this.werkzeuge.add(werkzeug);
  }

  // Methode, um alle Werkzeuge zu zeigen
  void zeigeAlleWerkzeuge() {
    print('Alle Werkzeuge:');
    for (String werkzeug in this.werkzeuge) {
      print(werkzeug);
    }
  }

  // Methode, um ein Werkzeug bei einem bestimmten Index zu geben
  String gibWerkzeugBeiIndex(int index) {
    if (index >= 0 && index < this.werkzeuge.length) {
      return this.werkzeuge[index];
    } else {
      return 'Ungültiger Index';
    }
  }
}
