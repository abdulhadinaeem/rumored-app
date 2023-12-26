import 'package:rumo_red_app/core/constants/imports.dart';

class AutoParticipantsWithoutMinor extends StatelessWidget {
  AutoParticipantsWithoutMinor(
      {super.key,
      required this.isSpinWheel,
      required this.isAutoParticipantsDrinking,
      required this.isWithoutMinorDrinking});
  bool isSpinWheel, isWithoutMinorDrinking, isAutoParticipantsDrinking;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AutoParticipantsWithoutMinorController>(
      init: AutoParticipantsWithoutMinorController(
        isSpining: isSpinWheel,
        isWithoutMinorDrinking: isWithoutMinorDrinking,
        isAutoParticipantsDrinking: isAutoParticipantsDrinking,
      ),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
          body: Column(
            children: [
              SizedBox(
                height: context.height * 0.1,
              ),
              controller.image,
              CustomParicipantsContainer(
                image: controller.imageList,
                title: controller.nameList,
                isButtonRequired: true,
                buttonTitle: Strings.startQuiz,
                onPressed: () {
                  controller.goToNextScreen();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
