import 'package:rumo_red_app/core/constants/imports.dart';

class YourCharacterScreenController extends GetxController {
  // double seletedIndex = 0;
  int currentIndex = 0;

  // late double width;
  // late Color color;
  PageController pageController = PageController();
  onPageChanged(page) {
    currentIndex = page;
    update();
  }

  List<CharacterScreenModel> characterList = [
    CharacterScreenModel(
      title: "“Fashion Icon”",
      image: "assets/images/character1.png",
      percentage: "90% votes",
      aboutSection:
          "A fashion icon is someone who is\nrecognized and admired for their sense of\nstyle and fashion choices. This person\ntypically stands out for their ability to put\ntogether stylish and cohesive outfits, staying\non top of current trends, and expressing\ntheir individuality through clothing.",
    ),
    CharacterScreenModel(
      title: "“Rich One”",
      image: "assets/images/character2.png",
      percentage: "90% votes",
      aboutSection:
          "A Rich One is someone who possesses\nsignificant wealth or financial resources.\nThis person often enjoys a comfortable and\naffluent lifestyle, with the ability to afford\nluxury items, travel to exotic destinations,\nand engage in high-end experiences.",
    ),
    CharacterScreenModel(
      title: "“Gossip Queen”",
      image: "assets/images/character3.png",
      percentage: "90% votes",
      aboutSection:
          "A Gossip Queen is a colloquial term\nused to describe someone, usually a\nwoman, who is known for spreading\ngossip or rumors. This person tends to\nbe well-informed about the personal\nlives of others and often enjoys sharing\nthat information with different people.",
    ),
  ];
  // @override
  // void onInit() {

  //   // pageController.addListener(() {
  //   //   seletedIndex = pageController.page!;
  //   //   update();
  //   // });

  //   super.onInit();
  // }
}

//
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['percentage'] = this.percentage;
    data['image'] = this.image;
    data['aboutSection'] = this.aboutSection;
    return data;
  }
}
