import 'package:rumo_red_app/core/constants/imports.dart';

class QuizQuestionController extends GetxController {
  QuizQuestionController(
      {required this.isSpining, required this.isSpinWheelParticipants});
  @override
  void onInit() {
    super.onInit();
  }

  bool isSpining, isSpinWheelParticipants;

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
  void goToNextScreen() {
    Get.to(
      isSpining
          ? SpinWheelQuizStartScreen(
              isSpining: isSpining,
              isSpinWheelParticipants: isSpinWheelParticipants,
              isDrinkingGame: false,
            )
          : const ResultScreen(),
    );
  }
}
