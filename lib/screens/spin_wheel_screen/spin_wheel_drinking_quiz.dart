import 'package:rumo_red_app/core/constants/imports.dart';

class SpinWheelDrinkingQuizScreen extends StatelessWidget {
  SpinWheelDrinkingQuizScreen({super.key, required this.isDrinkingGame});
  bool isDrinkingGame;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFF873AAB),
            Color(0XFF3A46AB),
          ],
        ),
      ),
      child: GetBuilder<SpinWheelRrinkingQuizController>(
        init: SpinWheelRrinkingQuizController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
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
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textFiledColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < 4; i++)
                  CustomParticipantsContainerList(
                    title: controller.name[i],
                    url: controller.image[i],
                  ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: CustomButton(
                    title: Strings.done,
                    onPressed: () {
                      Get.to(
                        DrinkingAutoResultScreen(
                          isDrinkingGame: isDrinkingGame,
                          isAutoParticipantsDrinking: false,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
