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
                SvgPicture.asset("assets/images/auto_generated11.svg"),
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
