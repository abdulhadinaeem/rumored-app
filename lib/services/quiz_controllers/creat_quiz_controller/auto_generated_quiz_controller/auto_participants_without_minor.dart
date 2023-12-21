import 'package:rumo_red_app/core/constants/imports.dart';

class AutoParticipantsWithoutMinorController extends GetxController {
  AutoParticipantsWithoutMinorController(
      {required this.isSpining,
      required this.isWithoutMinorDrinking,
      required this.isAutoParticipantsDrinking});
  bool isSpining, isWithoutMinorDrinking, isAutoParticipantsDrinking;
  late Image image;
  late Color color;
  bachGroundColor() {
    color = isWithoutMinorDrinking || isAutoParticipantsDrinking
        ? AppColors.drinkingScreenBackgroundTheme
        : AppColors.primaryColor;
  }

  showImage() {
    image = isSpining || isAutoParticipantsDrinking
        ? Image.asset("assets/images/s.png")
        : isWithoutMinorDrinking
            ? Image.asset("assets/images/drink_participant.png")
            : Image.asset("assets/images/no-minor-participants.png");
    update();
  }

  @override
  void onInit() {
    bachGroundColor();
    showImage();
    super.onInit();
  }
}
