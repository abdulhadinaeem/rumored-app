import 'package:rumo_red_app/core/constants/imports.dart';

class CreateQuizParicipantscontroller extends GetxController {
  CreateQuizParicipantscontroller(
      {required this.isSpinWheelParticipants, required this.isDrinkingGame});
  late Image image;
  late Color color;
  bool isSpinWheelParticipants;
  bool isDrinkingGame;
  void showImage() {
    image = isSpinWheelParticipants
        ? Image.asset("assets/images/s.png")
        : Image.asset("assets/images/quiz_paricipants.png");
  }

  void backGroundColor() {
    color = isDrinkingGame
        ? AppColors.drinkingScreenBackgroundTheme
        : AppColors.primaryColor;
  }

  void goToNextScreen() {
    Get.to(
      isDrinkingGame
          ? QuestionCreatScreen(
              isSpinWheelParticipants: isSpinWheelParticipants,
              isSpinDrinkingGame: true,
              isDrinkingGame: isDrinkingGame,
            )
          : QuestionCreatScreen(
              isSpinWheelParticipants: isSpinWheelParticipants,
              isSpinDrinkingGame: false,
              isDrinkingGame: isDrinkingGame,
            ),
    );
  }

  @override
  void onInit() {
    backGroundColor();
    showImage();
    super.onInit();
  }
}
