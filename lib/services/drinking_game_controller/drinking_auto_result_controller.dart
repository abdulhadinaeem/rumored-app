import 'package:rumo_red_app/core/constants/imports.dart';

class DrinkingAutoResultController extends GetxController {
  DrinkingAutoResultController(
      {required this.isDrinkingGame, required this.isAutoParticipantsDrinking});
  bool isDrinkingGame, isAutoParticipantsDrinking;
  void goToNextScreen() {
    Get.to(isDrinkingGame || isAutoParticipantsDrinking
        ? SpinWheelQuizStartScreen(
            isAutoParticipantsDrinking: isAutoParticipantsDrinking,
            isSpining: false,
            isDrinkingGame: isDrinkingGame,
            isSpinWheelParticipants: false,
          )
        : ResultWinScreen(
            isAutoParticipantsDrinking: isAutoParticipantsDrinking,
            isDrinkingGame: true,
            isSpinWheelParticipants: false,
            isSpining: false,
          ));
  }
}
