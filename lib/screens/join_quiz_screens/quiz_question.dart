import 'package:rumo_red_app/core/constants/imports.dart';

class QuizQuestionScreen extends StatelessWidget with GradinetScaffold {
  QuizQuestionScreen({super.key, required this.isSpining});
  bool isSpining;

  @override
  Widget build(BuildContext context) {
    return containerGradient(
      Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<QuizQuestionController>(
            init: QuizQuestionController(isSpining: isSpining),
            builder: (controller) {
              return Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Center(
                    child: Text("Answer the question",
                        style: context.textTheme.displayLarge),
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
                    participantsContainer(
                        context, controller.name[i], controller.image[i]),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: CustomButton(
                      title: "Done",
                      onPressed: () {
                        controller.goToNextScreen();
                      },
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

Widget participantsContainer(BuildContext context, String name, image) {
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
      child: customListtile(name, image),
    ),
  );
}

Widget customListtile(String title, String url) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
    ),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.getReadyContainerColor,
        backgroundImage: AssetImage(url),
        radius: 15,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.textFiledColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
