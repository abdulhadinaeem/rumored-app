class ProfileListtileDataModel {
  String? title;
  String? listTileTitle;
  String? image;

  ProfileListtileDataModel({this.title, this.listTileTitle, this.image});

  ProfileListtileDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    listTileTitle = json['listTileTitle'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['listTileTitle'] = listTileTitle;
    data['image'] = image;
    return data;
  }
}
