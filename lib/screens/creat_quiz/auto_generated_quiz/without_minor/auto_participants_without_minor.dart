import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/creat_quiz/drinking_game/drinking_question_quiz.dart';

class AutoParticipantsWithoutMinor extends StatelessWidget {
  AutoParticipantsWithoutMinor(
      {super.key,
      required this.isSpinWheel,
      required this.isAutoParticipantsDrinking,
      required this.isWithoutMinorDrinking});
  bool isSpinWheel, isWithoutMinorDrinking, isAutoParticipantsDrinking;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AutoParticipantsWithoutMinorController>(
      init: AutoParticipantsWithoutMinorController(
          isSpining: isSpinWheel,
          isWithoutMinorDrinking: isWithoutMinorDrinking,
          isAutoParticipantsDrinking: isAutoParticipantsDrinking),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              controller.image,
              CustomParicipantsContainer(
                image: "assets/images/frame.png",
                title: "You",
                isButtonRequired: true,
                buttonTitle: "Start Quiz",
                onPressed: () {
                  Get.to(
                    isWithoutMinorDrinking || isAutoParticipantsDrinking
                        ? const DrinkingQuestionQuizScreen()
                        : QuizQuestionScreen(
                            isSpining: isSpinWheel,
                          ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
