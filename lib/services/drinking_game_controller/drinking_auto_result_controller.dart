import 'package:rumo_red_app/core/constants/imports.dart';

class DrinkingAutoResultController extends GetxController {
  DrinkingAutoResultController({required this.isDrinkingGame});
  bool isDrinkingGame;
  void goToNextScreen() {
    Get.to(isDrinkingGame
        ? SpinWheelQuizStartScreen(
            isDrinkingGame: isDrinkingGame,
          )
        : ResultWinScreen(isDrinkingGame: true));
  }
}
