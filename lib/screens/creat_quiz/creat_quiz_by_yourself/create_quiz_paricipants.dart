import 'package:rumo_red_app/core/constants/imports.dart';

class CreateQuizParicipantsScreen extends StatelessWidget {
  CreateQuizParicipantsScreen(
      {super.key,
      required this.isSpinWheelParticipants,
      required this.isDrinkingGame});
  bool isSpinWheelParticipants;
  bool isDrinkingGame;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateQuizParicipantscontroller>(
      init: CreateQuizParicipantscontroller(
          isSpinWheelParticipants: isSpinWheelParticipants,
          isDrinkingGame: isDrinkingGame),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
          body: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.05,
                ),
                Center(
                  child: controller.image,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomParicipantsContainer(
                  image: controller.imageList,
                  title: controller.nameList,
                  buttonTitle: Strings.next,
                  isButtonRequired: true,
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
