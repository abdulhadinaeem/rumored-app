import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/creat_quiz/auto_generated_quiz/with_minor/auto_participants_screen_with_minor.dart';
import 'package:rumo_red_app/screens/creat_quiz/auto_generated_quiz/without_minor/auto_participants_without_minor.dart';

class PinJoinController extends GetxController {
  PinJoinController(
      {required this.isAutoGeneratedScreen,
      required this.isJoinScreen,
      required this.isByYourself,
      required this.isSpinWheelScreen,
      required this.isMinor});
  bool isJoinScreen;
  bool isAutoGeneratedScreen;
  bool isMinor;
  bool isByYourself;
  bool isSpinWheelScreen = false;
  // goTonextScreens() {
  //   isJoinScreen
  //       ? Get.to(
  //           const GetReadyScreen(),
  //         )
  //       : Get.to(
  //           CreateQuizParicipantsScreen(isSpinWheelParticipants: false),
  //         );
  // }
  goTonextScreens() {
    if (isAutoGeneratedScreen == true) {
      Get.to(
        isMinor
            ? const AutoParticipantsScreenWithMinor()
            : const AutoParticipantsWithoutMinor(),
      );
    }
    if (isSpinWheelScreen == true) {
      Get.to(
        CreateQuizParicipantsScreen(
          isSpinWheelParticipants: true,
        ),
      );
    } else {
      print('else');
      Get.to(
        isJoinScreen
            ? const GetReadyScreen()
            : CreateQuizParicipantsScreen(
                isSpinWheelParticipants: false,
              ),
      );
    }
  }
}