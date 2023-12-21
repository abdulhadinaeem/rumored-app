import 'package:rumo_red_app/core/constants/imports.dart';

class ResultWinScreenController extends GetxController {
  ResultWinScreenController(
      {required this.isDrinkingGame,
      required this.isSpinWheelParticipants,
      required this.isSpining});
  bool isDrinkingGame, isSpinWheelParticipants, isSpining;
  late Color color;
  backGroundColor() {
    color = isDrinkingGame
        ? AppColors.drinkingScreenBackgroundTheme
        : isSpinWheelParticipants || isSpining
            ? AppColors.spinWheelScreenBackGroundColor
            : AppColors.primaryColor;
  }

  void goToextScreen() {
    Get.offAll(
      const DashBoardScreen(),
    );
  }

  @override
  void onInit() {
    backGroundColor();
    super.onInit();
  }
}
