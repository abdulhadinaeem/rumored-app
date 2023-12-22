import 'package:rumo_red_app/core/constants/imports.dart';

class QuizQuestionScreen extends StatelessWidget with GradinetScaffold {
  QuizQuestionScreen(
      {super.key,
      required this.isSpining,
      required this.isSpinWheelParticipants});
  bool isSpining, isSpinWheelParticipants;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizQuestionController>(
      init: QuizQuestionController(
          isSpining: isSpining,
          isSpinWheelParticipants: isSpinWheelParticipants),
      builder: (controller) {
        return Container(
          decoration: controller.boxDecoration,
          child: Scaffold(
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
                Text(
                  Strings.oneOutOfTwenty,
                  style: context.textTheme.displayMedium,
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
                Center(
                  child: Text(
                    Strings.questionOne,
                    style: context.textTheme.displayLarge?.copyWith(
                      fontWeight: FontWeight.w400,
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
                SizedBox(
                  height: context.height * 0.05,
                ),
                CustomButton(
                  title: Strings.done,
                  onPressed: () {
                    controller.goToNextScreen();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
