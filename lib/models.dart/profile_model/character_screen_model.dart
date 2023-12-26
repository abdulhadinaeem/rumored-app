class CharacterScreenModel {
  String? title;
  String? percentage;
  String? image;
  String? aboutSection;

  CharacterScreenModel(
      {this.title, this.percentage, this.image, this.aboutSection});

  CharacterScreenModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    percentage = json['percentage'] ?? '';
    image = json['image'];
    aboutSection = json['aboutSection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['percentage'] = percentage;
    data['image'] = image;
    data['aboutSection'] = aboutSection;
    return data;
  }
}
