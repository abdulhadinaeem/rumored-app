import 'package:rumo_red_app/core/constants/imports.dart';

class DrinkingQuestionQuizScreen extends StatelessWidget with GradinetScaffold {
  DrinkingQuestionQuizScreen(
      {super.key, required this.isAutoParticipantsDrinking});
  bool isAutoParticipantsDrinking;

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
                  height: context.height * 0.1,
                ),
                Center(
                  child: Text(
                    Strings.answerTheQues,
                    style: context.textTheme.displayLarge,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  Strings.oneOutOfTwenty,
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
                    Strings.questionOne,
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
                    title: Strings.you,
                    url: Strings.frameImage,
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: CustomButton(
                    title: Strings.done,
                    onPressed: () {
                      Get.to(
                        DrinkingAutoResultScreen(
                          isDrinkingGame: false,
                          isAutoParticipantsDrinking:
                              isAutoParticipantsDrinking,
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
