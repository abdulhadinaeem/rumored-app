import 'package:rumo_red_app/core/constants/imports.dart';

class CreateQuizParicipantsScreen extends StatelessWidget {
  CreateQuizParicipantsScreen(
      {super.key, required this.isSpinWheelParticipants});
  bool isSpinWheelParticipants;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CreateQuizParicipantscontroller(),
        builder: (controller) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Center(
                    child: isSpinWheelParticipants
                        ? Image.asset("assets/images/s.png")
                        : Image.asset("assets/images/quiz_paricipants.png"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomParicipantsContainer(image: "", title: "You"),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.02,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: CustomButton(
                        title: "Next",
                        onPressed: () {
                          Get.to(
                            QuestionCreatScreen(
                              isSpinWheelParticipants: isSpinWheelParticipants,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
