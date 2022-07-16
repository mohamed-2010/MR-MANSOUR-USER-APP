class LessonsModel {
  String? id;
  String? name;
  bool? enabled;
  String? url;
  bool? horezontal;
  LessonsModel({this.id, this.name, this.enabled, this.url,this.horezontal});

  factory LessonsModel.fromJson(Map<String, dynamic> json) => LessonsModel(
        id: json["id"],
        name: json["name"],
        enabled: json["enabled"],
        url: json["url"],
        horezontal: json["horezontal"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "enabled": enabled,
        "url": url,
      };
}