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
