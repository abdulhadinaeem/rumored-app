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
                CustomParicipantsContainer(
                  image: controller.imageList,
                  title: controller.nameList,
                  buttonTitle: "Start Quiz",
                  isButtonRequired: true,
                  onPressed: () {
                    Get.to(
                      QuizQuestionScreen(
                        isSpining: false,
                        isSpinWheelParticipants: false,
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        });
  }
}
