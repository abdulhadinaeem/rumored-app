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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Center(
                    child: controller.image,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomParicipantsContainer(
                    image: "assets/images/p-1.png",
                    title: "You",
                    buttonTitle: "Next",
                    isButtonRequired: true,
                    onPressed: () {
                      controller.goToNextScreen();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
