import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/creat_quiz/drinking_game/drinking_question_quiz.dart';

class AutoDrinkingParticipantsController extends GetxController {
  AutoDrinkingParticipantsController({required this.isByYourself});
  bool isByYourself;
  late Image image;
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
  void showImage() {
    image = isByYourself
        ? Image.asset("assets/images/s.png")
        : Image.asset("assets/images/drink_participant.png");
    update();
  }

  void goToNextScreen() {
    Get.to(
      isByYourself
          ? QuestionCreatScreen(
              isSpinWheelParticipants: true,
              isSpinDrinkingGame: isByYourself,
              isDrinkingGame: false,
            )
          : DrinkingQuestionQuizScreen(
              isAutoParticipantsDrinking: false,
            ),
    );
  }

  @override
  void onInit() {
    showImage();
    super.onInit();
  }
}
