class Category {
  final String value;
  final String name;
  final String image;
  Category({
    this.value,
    this.image,
    this.name,
  });
}

List<Category> categoriesList = [
  Category(
    value: "1",
    name: "Visite Mediche",
    image: "assets/visite.png",
  ),
  Category(
    value: "2",
    name: "Esami Diagnostici",
    image: "assets/esami_diagnostici.png",
  ),
  Category(
    value: "3",
    name: "Analisi",
    image: "assets/analisi.png",
  ),
  Category(
    value: "4",
    name: "Controlli",
    image: "assets/controlli.png",
  ),
  Category(
    value: "5",
    name: "Prescizioni Mediche",
    image: "assets/farmaci.png",
  ),
];
