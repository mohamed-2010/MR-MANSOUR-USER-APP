class PhaseStudyModel {
  PhaseStudyModel({
    this.id,
    this.StudyPhaseName,
    this.enable,
  });

  final String? id;
  final String? StudyPhaseName;
  final bool? enable;

  factory PhaseStudyModel.fromJson(Map<String, dynamic> json) => PhaseStudyModel(
    id: json["id"] == null ? null : json["id"],
    StudyPhaseName: json["StudyPhaseName"] == null ? null : json["StudyPhaseName"],
    enable: json["enable"] == null ? null : json["enable"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "StudyPhaseName": StudyPhaseName == null ? null : StudyPhaseName,
    "enable": enable == null ? null : enable,
  };
}