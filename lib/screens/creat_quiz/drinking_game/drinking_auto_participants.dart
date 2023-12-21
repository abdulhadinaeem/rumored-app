import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/creat_quiz/drinking_game/drinking_question_quiz.dart';
import 'package:rumo_red_app/services/drinking_game_controller/drinking_auto_participants.dart';

class AutoDrinkingParticipants extends StatelessWidget {
  AutoDrinkingParticipants({super.key, required this.isByYourself});
  bool isByYourself;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AutoDrinkingParticipantsController>(
        init: AutoDrinkingParticipantsController(isByYourself: isByYourself),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.drinkingScreenBackgroundTheme,
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  controller.image,
                  const SizedBox(
                    height: 10,
                  ),
                  CustomParicipantsContainer(
                    isButtonRequired: true,
                    image: "assets/images/p-2.png",
                    title: "You",
                    buttonTitle: "Strat Quiz",
                    onPressed: () {
                      controller.goToNextScreen();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
