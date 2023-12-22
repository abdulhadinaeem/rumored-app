import 'package:rumo_red_app/core/constants/imports.dart';

class ResultController extends GetxController {
  List<CustomProgressIndicatorModel> resultScreenDataList = [
    CustomProgressIndicatorModel(
        percent: 0.9,
        color: AppColors.resultScreenbottonColor1,
        text: Strings.you,
        percentage: Strings.fiftyfivePercent,
        url: Strings.frameImage),
    CustomProgressIndicatorModel(
        percent: 0.5,
        color: AppColors.resultScreenbottonColor2,
        text: "April John",
        percentage: "40%",
        url: "assets/images/p-3.png"),
    CustomProgressIndicatorModel(
        percent: 0.1,
        color: AppColors.resultScreenbottonColor3,
        text: "Veronica Park",
        percentage: "3%",
        url: "assets/images/p-1.png"),
    CustomProgressIndicatorModel(
        percent: 0.05,
        color: AppColors.resultScreenbottonColor4,
        text: "Johnathon Roy",
        percentage: "2%",
        url: "assets/images/p-2.png"),
  ];
  void goToNextScreen() {
    Get.to(
      ResultWinScreen(
        isAutoParticipantsDrinking: false,
        isDrinkingGame: false,
        isSpining: false,
        isSpinWheelParticipants: false,
      ),
    );
  }
}
