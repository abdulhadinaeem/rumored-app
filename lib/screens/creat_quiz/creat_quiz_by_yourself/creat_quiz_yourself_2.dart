import 'package:rumo_red_app/core/constants/imports.dart';

class CreatQuizByYourselfPage2 extends StatelessWidget {
  const CreatQuizByYourselfPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatQuizByYourselfPage2Controller>(
      init: CreatQuizByYourselfPage2Controller(),
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
                    border: Border.all(
                      width: 1,
                      color: AppColors.textFiledColor,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      Strings.howManyAnswer,
                      style: context.textTheme.displayMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < controller.creatQuiz2DataList.length; i++)
                  CustomQuestionButton(
                    text: controller.creatQuiz2DataList[i].text,
                    onPressed: () {},
                  ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: context.height * 0.2,
                ),
                CustomButton(
                  title: Strings.conTinue,
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
