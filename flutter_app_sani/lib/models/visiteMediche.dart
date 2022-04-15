class VisiteMediche {
  final String name;
  final String image;
  VisiteMediche({
    this.image,
    this.name,
  });
}

List<VisiteMediche> visiteMedicheList = [
  VisiteMediche(
    name: "Specialistiche",
    image: "assets/visite.png",
  ),
  VisiteMediche(
    name: "Ambulatori",
    image: "assets/visite.png",
  ),
];
