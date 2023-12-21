import 'package:rumo_red_app/core/constants/imports.dart';

class CreateQuizGetReadyController extends GetxController {
  CreateQuizGetReadyController(
      {required this.isSpinDrinking,
      required this.isSpiningScreen,
      required this.isDrinkingGame,
      required this.isSpinWheelParticipants});
  bool isSpinDrinking, isSpiningScreen, isDrinkingGame, isSpinWheelParticipants;
  late Color color;
  void backgroundColor() {
    color = isSpinDrinking
        ? AppColors.drinkingScreenBackgroundTheme
        : isSpinWheelParticipants
            ? AppColors.spinWheelScreenBackGroundColor
            : AppColors.primaryColor;
  }

  void goToNextScreen() {
    Get.to(
      isSpinDrinking
          ? SpinWheelDrinkingQuizScreen(
              isDrinkingGame: isDrinkingGame,
            )
          : QuizQuestionScreen(
              isSpinWheelParticipants: isSpinWheelParticipants,
              isSpining: isSpiningScreen,
            ),
    );
  }

  @override
  void onInit() {
    backgroundColor();
    super.onInit();
  }
}
