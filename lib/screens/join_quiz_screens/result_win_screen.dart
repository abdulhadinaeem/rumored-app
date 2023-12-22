import 'package:rumo_red_app/core/constants/imports.dart';

class ResultWinScreen extends StatelessWidget {
  ResultWinScreen(
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
    return GetBuilder<ResultWinScreenController>(
      init: ResultWinScreenController(
        isAutoParticipantsDrinking: isAutoParticipantsDrinking,
        isSpining: isSpining,
        isDrinkingGame: isDrinkingGame,
        isSpinWheelParticipants: isSpinWheelParticipants,
      ),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
          body: Column(
            children: [
              SizedBox(
                height: context.height * 0.1,
              ),
              Text(
                Strings.tryAgain,
                style: context.textTheme.displayLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                Strings.restartAndPlayAgain,
                style: context.textTheme.headlineLarge,
              ),
              SizedBox(
                height: context.height * 0.2,
              ),
              AppImages.resultWinScreenImage,
              SizedBox(
                height: context.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: CustomButton(
                  title: Strings.restart,
                  onPressed: () {
                    controller.goToextScreen();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
