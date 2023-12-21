import 'package:rumo_red_app/core/constants/imports.dart';

class ResultWinScreenController extends GetxController {
  ResultWinScreenController({required this.isDrinkingGame});
  bool isDrinkingGame;
  late Color color;
  backGroundColor() {
    color = isDrinkingGame
        ? AppColors.drinkingScreenBackgroundTheme
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
