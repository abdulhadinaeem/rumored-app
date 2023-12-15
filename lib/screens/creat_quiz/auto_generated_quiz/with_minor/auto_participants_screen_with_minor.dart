import 'package:rumo_red_app/core/constants/imports.dart';

class AutoParticipantsScreenWithMinor extends StatelessWidget {
  const AutoParticipantsScreenWithMinor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AutoParticipantsScreenWithMinorControler>(
        init: AutoParticipantsScreenWithMinorControler(),
        builder: (controller) {
          return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset("assets/images/auto-generate.png"),
                Expanded(
                    child: CustomParicipantsContainer(
                        image: "assets/images/frame.png", title: "You")),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomButton(
                    title: "Start Quiz",
                    onPressed: () {
                      Get.to(
                        QuizQuestionScreen(
                          isSpining: false,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
