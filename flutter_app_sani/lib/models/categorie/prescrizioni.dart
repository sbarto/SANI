class Prescrizioni {
  final String value;
  final String name;
  final String image;
  final String description;
  Prescrizioni({
    this.value,
    this.image,
    this.name,
    this.description,
  });
}

List<Prescrizioni> prescrizioniList = [
  Prescrizioni(
    value: "1",
    name: "Farmaci",
    image: "assets/farmaci.png",
    description: "le tue visite specialistiche",
  ),
];
