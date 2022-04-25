class VisiteMediche {
  final String name;
  final String image;
  final String description;
  VisiteMediche({
    this.image,
    this.name,
    this.description,
  });
}

List<VisiteMediche> visiteMedicheList = [
  VisiteMediche(
    name: "Specialistiche",
    image: "assets/visite.png",
    description: "le tue visite specialistiche",
  ),
  VisiteMediche(
    name: "Ambulatori",
    image: "assets/visite.png",
    description: "storico visiste ambulatorio",
  ),
];
