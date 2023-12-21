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
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text(
                    "Create Quiz",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(26),
                      ),
                      border:
                          Border.all(width: 1, color: AppColors.textFiledColor),
                    ),
                    child: Center(
                      child: Text(
                        "How many answer choices\n would like to add in each\nquestion?",
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomQuestionButton(text: "2 choices", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "3 choices", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "4 choices", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "5 choices", onPressed: () {}),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  CustomButton(
                      title: "Continue",
                      onPressed: () {
                        controller.goToNextScreen();
                      }),
                ],
              ),
            ),
          );
        });
  }
}
