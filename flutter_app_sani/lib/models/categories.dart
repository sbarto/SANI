class Category {
  final String name;
  final String image;
  Category({
    this.image,
    this.name,
  });
}

List<Category> categoriesList = [
  Category(
    name: "Visite Mediche",
    image: "assets/visite.png",
  ),
  Category(
    name: "Esami Diagnostici",
    image: "assets/esami_diagnostici.png",
  ),
  Category(
    name: "Analisi",
    image: "assets/analisi.png",
  ),
  Category(
    name: "Controlli",
    image: "assets/controlli.png",
  ),
  Category(
    name: "Prescizioni Mediche",
    image: "assets/farmaci.png",
  ),
];
