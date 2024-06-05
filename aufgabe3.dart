void main() {
  // Erzeuge Autor Objekt
  Autor autor = Autor("Marija Juric Zagorka", 1873, "Kroatien");

  // Erzeuge Buch Objekt
  Buch buch = Buch("Gricka vjestica", 1912, "Historischer Roman", autor);

  // Gebe Buchinformation aus
  print(buch.getBuchInfo());
}

class Autor {
  // Attribute
  String name;
  int geburtsjahr;
  String nationalitaet;

  // Konstruktor
  Autor(this.name, this.geburtsjahr, this.nationalitaet);
}

class Buch {
  // Attribute
  String titel;
  int veroeffentlichungsjahr;
  String genre;
  Autor autor;

  // Konstruktor
  Buch(this.titel, this.veroeffentlichungsjahr, this.genre, this.autor);

  // Methode, um Buchinformationen zurueckzugeben
  String getBuchInfo() {
    return "Titel: $titel\n"
        "Veroeffentlichungsjahr: $veroeffentlichungsjahr\n"
        "Genre: $genre\n"
        "Autor: ${autor.name}\n"
        "Geburtsjahr des Autors: ${autor.geburtsjahr}\n"
        "Nationalitaet des Autors: ${autor.nationalitaet}";
  }
}
