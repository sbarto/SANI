class Category {
  final String value;
  final String name;
  final String image;
  final String description;
  Category({
    this.value,
    this.image,
    this.name,
    this.description,
  });
}

List<Category> categoriesList = [
  Category(
    value: "1",
    name: "Visite Mediche",
    image: "assets/visite.png",
    description: "accedi alle tue visite mediche!",
  ),
  Category(
    value: "2",
    name: "Esami Diagnostici",
    image: "assets/esami_diagnostici.png",
    description: "i tuoi esami diagnostici!",
  ),
  Category(
    value: "3",
    name: "Analisi",
    image: "assets/analisi.png",
    description: "le tue analisi a portata di mano!",
  ),
  Category(
    value: "4",
    name: "Controlli",
    image: "assets/controlli.png",
    description: "scarica qui i tuoi controlli!",
  ),
  Category(
    value: "5",
    name: "Prescizioni Mediche",
    image: "assets/farmaci.png",
    description: "verifica le tue ricette!",
  ),
];
