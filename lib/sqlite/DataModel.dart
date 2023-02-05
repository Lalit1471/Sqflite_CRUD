class DataModel {
  late final int? id;
  late final String title;
  late final String subtitle;
  late final String content;
  DataModel(
      {this.id,
      required this.title,
      required this.subtitle,
      required this.content});

  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
      title: json["title"],
      subtitle: json["subtitle"],
      content: json["content"]);
  Map<String, dynamic> toMap() =>
      {"id": id, "title": title, "subtitle": subtitle, "content": content};
}
