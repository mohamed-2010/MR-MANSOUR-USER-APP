class UnitesModel {
  String? id;
  String? name;
  bool? enabled;
  UnitesModel({this.id, this.name, this.enabled});
  factory UnitesModel.fromJson(Map<String, dynamic> json) => UnitesModel(
        id: json["id"],
        name: json["name"],
        enabled: json["enabled"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "enabled": enabled,
      };
}