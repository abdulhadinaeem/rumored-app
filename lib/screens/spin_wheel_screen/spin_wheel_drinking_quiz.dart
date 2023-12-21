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
                      "Who is most likely to\n     kill someone?",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textFiledColor),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: CustomButton(
                        title: "Done",
                        onPressed: () {
                          Get.to(
                            DrinkingAutoResultScreen(
                              isDrinkingGame: isDrinkingGame,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
