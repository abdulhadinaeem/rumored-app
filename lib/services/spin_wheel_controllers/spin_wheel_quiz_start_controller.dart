import 'package:rumo_red_app/core/constants/imports.dart';

class SpinWheelQuizStartController extends GetxController {
  SpinWheelQuizStartController({required this.isDrinkingGame});
  final StreamController dividerController = StreamController<int>();
  bool isDrinkingGame;
  late Color color;
  void backGroundColor() {
    color = isDrinkingGame
        ? AppColors.drinkingScreenBackgroundTheme
        : AppColors.primaryColor;
  }

  @override
  void onInit() {
    backGroundColor();
    Future.delayed(const Duration(seconds: 8), () {
      Get.off(
        ResultWinScreen(isDrinkingGame: isDrinkingGame),
      );
    });

    super.onInit();
  }

  double generateRandomAngle() => Random().nextDouble() * pi * 2;
  @override
  void dispose() {
    dividerController.close();
    super.dispose();
  }
}
