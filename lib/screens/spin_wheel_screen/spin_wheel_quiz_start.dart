import 'package:rumo_red_app/core/constants/imports.dart';

class SpinWheelQuizStartScreen extends StatelessWidget {
  SpinWheelQuizStartScreen(
      {super.key,
      required this.isDrinkingGame,
      required this.isSpining,
      required this.isSpinWheelParticipants,
      required this.isAutoParticipantsDrinking});
  bool isDrinkingGame,
      isSpinWheelParticipants,
      isSpining,
      isAutoParticipantsDrinking;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpinWheelQuizStartController>(
      init: SpinWheelQuizStartController(
          isAutoParticipantsDrinking: isAutoParticipantsDrinking,
          isDrinkingGame: isDrinkingGame,
          isSpinWheelParticipants: isSpinWheelParticipants,
          isSpining: isSpining),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
          body: Column(
            children: [
              SizedBox(
                height: context.height * 0.1,
              ),
              Center(
                child: Text(
                  Strings.spinTheWheel,
                  style: context.textTheme.displayLarge?.copyWith(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: context.height * 0.15),
              CustomSpinWheel(
                isDrinkingGame: isDrinkingGame,
                isSpinWheelParticipants: isSpinWheelParticipants,
                isAutoParticipantsDrinking: isAutoParticipantsDrinking,
              ),
              TextButton(
                onPressed: () {
                  Get.offAll(
                    const DashBoardScreen(),
                  );
                },
                child: const Text(
                  Strings.exitQuiz,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
