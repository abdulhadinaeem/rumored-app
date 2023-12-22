import 'package:rumo_red_app/core/constants/imports.dart';

class AutoParticipantsWithoutMinorController extends GetxController {
  AutoParticipantsWithoutMinorController(
      {required this.isSpining,
      required this.isWithoutMinorDrinking,
      required this.isAutoParticipantsDrinking});
  List<String> nameList = [
    "You",
    "April John",
    "Veronica Park",
    "Jonathon Roye",
  ];
  List<String> imageList = [
    "assets/images/frame.png",
    "assets/images/p-1.png",
    "assets/images/p-2.png",
    "assets/images/p-3.png",
  ];
  bool isSpining, isWithoutMinorDrinking, isAutoParticipantsDrinking;
  late SvgPicture image;
  late Color color;
  bachGroundColor() {
    color = isWithoutMinorDrinking || isAutoParticipantsDrinking
        ? AppColors.drinkingScreenBackgroundTheme
        : isSpining
            ? AppColors.spinWheelScreenBackGroundColor
            : AppColors.primaryColor;
  }

  showImage() {
    image = isSpining || isAutoParticipantsDrinking
        ? SvgPicture.asset("assets/images/s11.svg")
        : isWithoutMinorDrinking
            ? SvgPicture.asset("assets/images/drink_participant.svg")
            : SvgPicture.asset("assets/images/no_minor.svg");
    update();
  }

  goToNextScreen() {
    Get.to(
      isWithoutMinorDrinking || isAutoParticipantsDrinking
          ? DrinkingQuestionQuizScreen(
              isAutoParticipantsDrinking: isAutoParticipantsDrinking)
          : QuizQuestionScreen(
              isSpinWheelParticipants: false,
              isSpining: isSpining,
            ),
    );
  }

  @override
  void onInit() {
    bachGroundColor();
    showImage();
    super.onInit();
  }
}
