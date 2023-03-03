
class RegionModel {
  int id;
  String division;
  String name;

  RegionModel(this.id, this.division, this.name);

  @override
  String toString() {
    return 'RegionModel{id: $id, division: $division, name: $name}';
  }
}