class EsamiDiagnostici {
  final String value;
  final String name;
  final String image;
  final String description;
  EsamiDiagnostici({
    this.value,
    this.image,
    this.name,
    this.description,
  });
}

List<EsamiDiagnostici> esamiDiagnosticiList = [
  EsamiDiagnostici(
    value: "1",
    name: "RM",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    value: "2",
    name: "RX",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    value: "3",
    name: "Ecografie",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    value: "4",
    name: "ECG",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
  EsamiDiagnostici(
    value: "5",
    name: "EMG",
    image: "assets/esami_diagnostici.png",
    description: "le tue visite specialistiche",
  ),
];
