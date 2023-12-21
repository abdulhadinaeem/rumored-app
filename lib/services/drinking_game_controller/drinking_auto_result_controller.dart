import 'package:rumo_red_app/core/constants/imports.dart';

class DrinkingAutoResultController extends GetxController {
  DrinkingAutoResultController({required this.isDrinkingGame});
  bool isDrinkingGame;
  void goToNextScreen() {
    Get.to(isDrinkingGame
        ? SpinWheelQuizStartScreen(
            isSpining: false,
            isDrinkingGame: isDrinkingGame,
            isSpinWheelParticipants: false,
          )
        : ResultWinScreen(
            isDrinkingGame: true,
            isSpinWheelParticipants: false,
            isSpining: false,
          ));
  }
}
