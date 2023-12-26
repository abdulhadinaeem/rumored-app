import 'package:rumo_red_app/core/constants/imports.dart';

class CreatQuizGetReadyScreen extends StatelessWidget {
  CreatQuizGetReadyScreen(
      {super.key,
      required this.isSpiningScreen,
      required this.isSpinDrinking,
      required this.isDrinkingGame,
      required this.isSpinWheelParticipants});
  bool isSpiningScreen;
  bool isSpinDrinking, isDrinkingGame, isSpinWheelParticipants;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateQuizGetReadyController>(
      init: CreateQuizGetReadyController(
        isSpinWheelParticipants: isSpinWheelParticipants,
        isSpinDrinking: isSpinDrinking,
        isSpiningScreen: isSpiningScreen,
        isDrinkingGame: isDrinkingGame,
      ),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
          body: Column(
            children: [
              SizedBox(
                height: context.height * 0.15,
              ),
              Center(
                child: Text(
                  Strings.getReady,
                  style: context.textTheme.displayLarge,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                Strings.quizStartSoon,
                style: context.textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: context.height * 0.1,
              ),
              AppImages.getReadyScreenImage,
              SizedBox(
                height: context.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                child: CustomButton(
                  title: Strings.start,
                  onPressed: () {
                    controller.goToNextScreen();
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
