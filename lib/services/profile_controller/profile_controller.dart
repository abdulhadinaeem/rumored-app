import 'package:rumo_red_app/core/constants/imports.dart';

class ProfileController extends GetxController {
  List<ProfileListtileDataModel> profileScreenListTileData = [
    ProfileListtileDataModel(
        title: "Account",
        listTileTitle: "Edit Profile",
        image: "assets/images/edit-pen.svg"),
    ProfileListtileDataModel(
      title: "About",
      listTileTitle: "Help & Support",
      image: "assets/images/icon-park-solid_help.svg",
    ),
    ProfileListtileDataModel(
      title: "",
      listTileTitle: "About Us",
      image: "assets/images/about-us.svg",
    ),
    ProfileListtileDataModel(
      title: "",
      listTileTitle: "Privacy Policy",
      image: "assets/images/privacy.svg",
    ),
    ProfileListtileDataModel(
      title: "General",
      listTileTitle: "Subscription",
      image: "assets/images/subscription.svg",
    ),
  ];
}

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
