import 'package:rumo_red_app/core/constants/imports.dart';

class CreateQuizGetReadyController extends GetxController {
  CreateQuizGetReadyController(
      {required this.isSpinDrinking,
      required this.isSpiningScreen,
      required this.isDrinkingGame});
  bool isSpinDrinking, isSpiningScreen, isDrinkingGame;
  late Color color;
  void backgroundColor() {
    color = isSpinDrinking
        ? AppColors.drinkingScreenBackgroundTheme
        : AppColors.primaryColor;
  }

  void goToNextScreen() {
    Get.to(
      isSpinDrinking
          ? SpinWheelDrinkingQuizScreen(
              isDrinkingGame: isDrinkingGame,
            )
          : QuizQuestionScreen(
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
