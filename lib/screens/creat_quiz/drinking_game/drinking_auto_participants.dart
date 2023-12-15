import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/creat_quiz/drinking_game/drinking_question_quiz.dart';

class AutoDrinkingParticipants extends StatelessWidget {
  const AutoDrinkingParticipants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.drinkingScreenBackgroundTheme,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Image.asset("assets/images/drink_participant.png"),
            const SizedBox(
              height: 10,
            ),
            CustomParicipantsContainer(image: "", title: "You"),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 14),
              child: CustomButton(
                  title: "Strat Quiz",
                  onPressed: () {
                    Get.to(
                      const DrinkingQuestionQuizScreen(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
