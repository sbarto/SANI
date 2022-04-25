class Analisi {
  final String value;
  final String name;
  final String image;
  final String description;
  Analisi({
    this.value,
    this.image,
    this.name,
    this.description,
  });
}

List<Analisi> analisiList = [
  Analisi(
    value: "1",
    name: "Sangue",
    image: "assets/analisi.png",
    description: "le tue visite specialistiche",
  ),
  Analisi(
    value: "2",
    name: "Tiroide",
    image: "assets/analisi.png",
    description: "le tue visite specialistiche",
  ),
  Analisi(
    value: "3",
    name: "Urine",
    image: "assets/analisi.png",
    description: "le tue visite specialistiche",
  ),
  Analisi(
    value: "4",
    name: "Feci",
    image: "assets/analisi.png",
    description: "le tue visite specialistiche",
  ),
];
