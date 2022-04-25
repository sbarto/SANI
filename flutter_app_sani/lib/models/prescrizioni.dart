class Prescrizioni {
  final String name;
  final String image;
  final String description;
  Prescrizioni({
    this.image,
    this.name,
    this.description,
  });
}

List<Prescrizioni> prescrizioniList = [
  Prescrizioni(
    name: "Farmaci",
    image: "assets/controlli.png",
    description: "le tue visite specialistiche",
  ),
];
