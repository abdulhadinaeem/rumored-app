import 'package:rumo_red_app/core/constants/imports.dart';

class DrinkingQuestionQuizScreen extends StatelessWidget with GradinetScaffold {
  const DrinkingQuestionQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return drinkingContainerGradient(
      Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<DrinkingQuestionQuizController>(
            init: DrinkingQuestionQuizController(),
            builder: (controller) {
              return Column(
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
                      color: AppColors.textFiledColor,
                    ),
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
                        color: AppColors.textFiledColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  for (int i = 0; i < 4; i++)
                    CustomParticipantsContainerList(
                      title: "You",
                      url: "assets/images/frame.png",
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    child: CustomButton(
                      title: "Done",
                      onPressed: () {
                        Get.to(DrinkingAutoResultScreen(isDrinkingGame: false));
                      },
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
