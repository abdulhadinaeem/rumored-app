import 'package:rumo_red_app/core/constants/imports.dart';

class AutoParticipantsWithoutMinor extends StatelessWidget {
  const AutoParticipantsWithoutMinor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AutoParticipantsWithoutMinorController>(
        init: AutoParticipantsWithoutMinorController(),
        builder: (controller) {
          return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset("assets/images/no-minor-participants.png"),
                CustomParicipantsContainer(
                    image: "assets/images/frame.png", title: "You"),
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
