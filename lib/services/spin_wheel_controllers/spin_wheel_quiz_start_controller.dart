import 'package:rumo_red_app/core/constants/imports.dart';

class SpinWheelQuizStartController extends GetxController {
  SpinWheelQuizStartController(
      {required this.isDrinkingGame,
      required this.isSpinWheelParticipants,
      required this.isSpining});
  final StreamController dividerController = StreamController<int>();
  bool isDrinkingGame, isSpinWheelParticipants, isSpining;
  late Color color;
  void backGroundColor() {
    color = isDrinkingGame
        ? const Color.fromRGBO(101, 32, 92, 1)
        : isSpinWheelParticipants || isSpining
            ? AppColors.spinWheelScreenBackGroundColor
            : AppColors.primaryColor;
  }

  @override
  void onInit() {
    backGroundColor();
    Future.delayed(const Duration(seconds: 8), () {
      Get.off(
        ResultWinScreen(
          isSpining: isSpining,
          isDrinkingGame: isDrinkingGame,
          isSpinWheelParticipants: isSpinWheelParticipants,
        ),
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
