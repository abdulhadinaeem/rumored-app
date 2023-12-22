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
                height: context.height * 0.1,
              ),
              AppImages.autoGeneratedImage,
              CustomParicipantsContainer(
                image: controller.imageList,
                title: controller.nameList,
                buttonTitle: Strings.startQuiz,
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
      },
    );
  }
}
