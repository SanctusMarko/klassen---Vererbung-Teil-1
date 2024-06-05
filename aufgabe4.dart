void main() {
  // Erzeuge Autor Objekte
  Autor autor1 = Autor("Marija Juric Zagorka", 1873, "Kroatien");
  Autor autor2 = Autor("Ivo Andric", 1892, "Kroatien");

  // Erzeuge Buch Objekte
  Buch buch1 = Buch("Gricka vjestica", 1912, "Historischer Roman", autor1);
  Buch buch2 = Buch("Na Drini cuprija", 1945, "Historischer Roman", autor2);

  // Erzeuge Student Objekte und füge Bücher zur bookList hinzu
  Student student1 = Student("Ivan", []);
  student1.addBook(buch1);

  Student student2 = Student("Ana", []);
  student2.addBook(buch2);
  student2.addBook(buch1);

  // Gebe Informationen über die Studenten und ihre Bücher aus
  student1.showBooks();
  student2.showBooks();
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

  // Methode, um Buchinformationen zurückzugeben
  String getBuchInfo() {
    return "Titel: $titel\n"
        "Veroeffentlichungsjahr: $veroeffentlichungsjahr\n"
        "Genre: $genre\n"
        "Autor: ${autor.name}\n"
        "Geburtsjahr des Autors: ${autor.geburtsjahr}\n"
        "Nationalitaet des Autors: ${autor.nationalitaet}";
  }
}

class Student {
  // Attribute
  String name;
  List<Buch> bookList;

  // Konstruktor
  Student(this.name, this.bookList);

  // Methode, um ein Buch zur bookList hinzuzufügen
  void addBook(Buch buch) {
    bookList.add(buch);
  }

  // Methode, um alle Bücher des Studenten anzuzeigen
  void showBooks() {
    print("Student: $name");
    for (Buch buch in bookList) {
      print(buch.getBuchInfo());
      print("------");
    }
  }
}
