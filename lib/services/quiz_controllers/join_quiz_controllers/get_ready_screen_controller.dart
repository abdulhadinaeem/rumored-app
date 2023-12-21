import 'package:rumo_red_app/core/constants/imports.dart';

class GetReadyScreenController extends GetxController {
  int index = 0;
  List<String> name = [
    "You",
    "April John",
    "Veronica Park",
    "Johnathon Roy",
  ];
  List<String> image = [
    "assets/images/p-1.png",
    "assets/images/p-2.png",
    "assets/images/p-3.png",
    "assets/images/frame.png"
  ];
  @override
  void onInit() {
    afterLoading();

    super.onInit();
  }

  updateIndex() {
    index++;
    update();
  }

  void afterLoading() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(
        QuizQuestionScreen(
          isSpinWheelParticipants: false,
          isSpining: false,
        ),
      );
    });
  }
}
