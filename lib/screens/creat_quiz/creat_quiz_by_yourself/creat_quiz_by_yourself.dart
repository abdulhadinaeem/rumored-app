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
                        "How many question you\nwant to add in quiz?",
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomQuestionButton(text: "5 questions", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "10 questions", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "15 questions", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "20 questions", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "25 questions", onPressed: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomQuestionButton(text: "50 questions", onPressed: () {}),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  CustomButton(
                      title: "Continue",
                      onPressed: () {
                        Get.to(const CreatQuizByYourselfPage2());
                      })
                ],
              ),
            ),
          );
        });
  }
}
