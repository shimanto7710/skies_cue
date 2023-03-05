class RegionModel {
  final int id;
  final String division;
  final String name;
  final String region;

  RegionModel(
      {required this.id,
      required this.division,
      required this.name,
      required this.region});

  @override
  String toString() {
    return 'RegionModel{id: $id, division: $division, name: $name, region: $region}';
  }
}
