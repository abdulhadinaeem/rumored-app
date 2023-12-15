import 'package:rumo_red_app/core/constants/imports.dart';

class PickEditionController extends GetxController {
  PickEditionController(context);
  List<PickEditionModel> pickeditionData = [
    PickEditionModel(
      assetImage: "assets/images/classic.png",
      text: "Classic",
    ),
    PickEditionModel(
      assetImage: "assets/images/spin-wheel.png",
      text: "Spin the wheel",
    ),
    PickEditionModel(
      assetImage: "assets/images/girls-night.png",
      text: "Girls night",
    ),
    PickEditionModel(
      assetImage: "assets/images/for boys.png",
      text: "For the boys",
    ),
    PickEditionModel(
      assetImage: "assets/images/couples.png",
      text: "Couples",
    ),
    PickEditionModel(
      assetImage: "assets/images/family.png",
      text: "Family",
    ),
    //UpGrade.....................
    PickEditionModel(
      assetImage: "assets/images/movies.png",
      text: "Movies",
    ),
    PickEditionModel(
      assetImage: "assets/images/chirstmas.png",
      text: "Chirstmas",
    ),
    PickEditionModel(
      assetImage: "assets/images/spicy.png",
      text: "Spicy",
    ),
    PickEditionModel(
      assetImage: "assets/images/halloween.png",
      text: "Halloween",
    ),
    PickEditionModel(
      assetImage: "assets/images/situationships.png",
      text: "Situationship",
    ),
    PickEditionModel(
      assetImage: "assets/images/unfiltered.png",
      text: "Unfiltered",
    ),
    PickEditionModel(
      assetImage: "assets/images/laidback.png",
      text: "Laidback",
    ),
    PickEditionModel(
      assetImage: "assets/images/comedy.png",
      text: "Comedy",
    ),
  ];
}

class PickEditionModel {
  String assetImage, text;

  PickEditionModel({
    required this.assetImage,
    required this.text,
  });
}
