class VisiteMediche {
  final String value;
  final String name;
  final String image;
  final String description;
  VisiteMediche({
    this.value,
    this.image,
    this.name,
    this.description,
  });
}

List<VisiteMediche> visiteMedicheList = [
  VisiteMediche(
    value: "1",
    name: "Specialistiche",
    image: "assets/visite.png",
    description: "le tue visite specialistiche",
  ),
  VisiteMediche(
    value: "2",
    name: "Ambulatori",
    image: "assets/visite.png",
    description: "storico visiste ambulatorio",
  ),
];
