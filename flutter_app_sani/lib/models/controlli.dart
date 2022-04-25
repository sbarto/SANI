class Controlli {
  final String name;
  final String image;
  final String description;
  Controlli({
    this.image,
    this.name,
    this.description,
  });
}

List<Controlli> controlliList = [
  Controlli(
    name: "MOC",
    image: "assets/controlli.png",
    description: "le tue visite specialistiche",
  ),
  Controlli(
    name: "Mammografia",
    image: "assets/controlli.png",
    description: "le tue visite specialistiche",
  ),
  Controlli(
    name: "Personalizzato",
    image: "assets/controlli.png",
    description: "le tue visite specialistiche",
  ),
];
