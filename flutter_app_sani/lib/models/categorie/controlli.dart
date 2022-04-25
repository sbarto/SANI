class Controlli {
  final String value;
  final String name;
  final String image;
  final String description;
  Controlli({
    this.value,
    this.image,
    this.name,
    this.description,
  });
}

List<Controlli> controlliList = [
  Controlli(
    value: "1",
    name: "MOC",
    image: "assets/controlli.png",
    description: "le tue visite specialistiche",
  ),
  Controlli(
    value: "2",
    name: "Mammografia",
    image: "assets/controlli.png",
    description: "le tue visite specialistiche",
  ),
  Controlli(
    value: "3",
    name: "Personalizzato",
    image: "assets/controlli.png",
    description: "le tue visite specialistiche",
  ),
];
