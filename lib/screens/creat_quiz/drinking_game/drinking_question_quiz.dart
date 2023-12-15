import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/creat_quiz/drinking_game/drinking_auto_result_screen.dart';

class DrinkingQuestionQuizScreen extends StatelessWidget with GradinetScaffold {
  const DrinkingQuestionQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return drinkingContainerGradient(
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: Text("Answer the question",
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "01/20",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textFiledColor),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomLinearPercentIndicator(
              progressColor: AppColors.secondaryColor,
              percent: 0.1,
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                "Who is most likely to\nkill someone?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textFiledColor),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            for (int i = 0; i < 4; i++) participantsContainer(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: CustomButton(
                  title: "Done",
                  onPressed: () {
                    Get.to(
                      const DrinkingAutoResultScreen(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

Widget participantsContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: AppColors.quizQuestionScreenbottonColor),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        shape: BoxShape.rectangle,
        color: AppColors.getReadyContainerColor,
      ),
      child: customListtile("You", ""),
    ),
  );
}

Widget customListtile(String title, String url) {
  return Center(
    child: ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 3, bottom: 3),
        child: CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 25,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: AppColors.textFiledColor,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
    ),
  );
}
