import 'package:rumo_red_app/core/constants/imports.dart';

class SpinWheelQuizStartController extends GetxController {
  SpinWheelQuizStartController(
      {required this.isDrinkingGame,
      required this.isSpinWheelParticipants,
      required this.isSpining,
      required this.isAutoParticipantsDrinking});
  final StreamController dividerController = StreamController<int>();
  bool isDrinkingGame,
      isSpinWheelParticipants,
      isSpining,
      isAutoParticipantsDrinking;
  late Color color;
  void backGroundColor() {
    color = isDrinkingGame || isAutoParticipantsDrinking
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
            isAutoParticipantsDrinking: isAutoParticipantsDrinking),
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
