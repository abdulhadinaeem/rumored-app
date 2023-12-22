import 'package:rumo_red_app/core/constants/imports.dart';

class CreatQuizByYourselfScreen extends StatelessWidget {
  const CreatQuizByYourselfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatQuizByYourselfController>(
      init: CreatQuizByYourselfController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.1,
                ),
                Text(
                  Strings.createQuiz,
                  style: context.textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: context.height * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(26),
                    ),
                    border:
                        Border.all(width: 1, color: AppColors.textFiledColor),
                  ),
                  child: Center(
                    child: Text(
                      Strings.quesWantToAdd,
                      style: context.textTheme.displayMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < controller.buttonModelData.length; i++)
                  CustomQuestionButton(
                    text: controller.buttonModelData[i].text,
                    onPressed: () {},
                  ),
                SizedBox(
                  height: context.height * 0.1,
                ),
                CustomButton(
                  title: "Continue",
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
