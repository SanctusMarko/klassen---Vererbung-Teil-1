void main() {
  // Erzeuge Lebensmittelhersteller Objekt mit den gegebenen Daten
  Lebensmittelhersteller hersteller = Lebensmittelhersteller(
      "Penny", "Friedensallee", "98", "22763", "Hamburg");

  // Gebe die Adresse aus
  print("Hersteller: ${hersteller.name}");
  print("Adresse: ${hersteller.adresse}");
}

class Lebensmittelhersteller {
  // Attribute
  String name;
  String strasse;
  String hausnummer;
  String postleitzahl;
  String stadt;
  late String adresse;

  /* Konstruktor mit { } Body Syntax um das Attribut 
  "Adresse" dynamisch zu erzeugen*/
  Lebensmittelhersteller(
      this.name, this.strasse, this.hausnummer, this.postleitzahl, this.stadt) {
    this.adresse = "$strasse $hausnummer, $postleitzahl $stadt";
  }
}
