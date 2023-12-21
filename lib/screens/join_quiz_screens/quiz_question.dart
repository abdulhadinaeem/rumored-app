import 'package:rumo_red_app/core/constants/imports.dart';

class QuizQuestionScreen extends StatelessWidget with GradinetScaffold {
  QuizQuestionScreen(
      {super.key,
      required this.isSpining,
      required this.isSpinWheelParticipants});
  bool isSpining, isSpinWheelParticipants;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: isSpinWheelParticipants || isSpining
            ? const LinearGradient(
                colors: [
                  Color(0XFF134753),
                  Color(0XFF16315A),
                ],
              )
            : const LinearGradient(
                colors: [
                  Color(0XFF2B9689),
                  Color(0XFF2B5696),
                ],
              ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<QuizQuestionController>(
            init: QuizQuestionController(
                isSpining: isSpining,
                isSpinWheelParticipants: isSpinWheelParticipants),
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
