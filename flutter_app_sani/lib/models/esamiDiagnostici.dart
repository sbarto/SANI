class EsamiDiagnostici {
  final String name;
  final String image;
  final String description;
  EsamiDiagnostici({
    this.image,
    this.name,
    this.description,
  });
}

List<EsamiDiagnostici> esamiDiagnosticiList = [
  EsamiDiagnostici(
    name: "RM",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    name: "RX",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    name: "Ecografie",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    name: "ECG",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    name: "EMG",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
];
