import 'package:rumo_red_app/core/constants/imports.dart';

class DrinkingAutoResultScreen extends StatelessWidget {
  DrinkingAutoResultScreen(
      {super.key,
      required this.isDrinkingGame,
      required this.isAutoParticipantsDrinking});
  bool isDrinkingGame, isAutoParticipantsDrinking;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrinkingAutoResultController>(
      init: DrinkingAutoResultController(
        isDrinkingGame: isDrinkingGame,
        isAutoParticipantsDrinking: isAutoParticipantsDrinking,
      ),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.drinkingScreenBackgroundTheme,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  Strings.takeShot,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textFiledColor,
                  ),
                ),
                CustomProgressIndicator(
                  context: context,
                  percent: 0.8,
                  color: AppColors.resultScreenbottonColor1,
                  text: Strings.veronicaPark,
                  percentage: Strings.fiftyfivePercent,
                  url: Strings.frameImage,
                ),
                const SizedBox(
                  height: 15,
                ),
                AppImages.drinkingResultImage,
                SizedBox(
                  height: context.height * 0.05,
                ),
                CustomButton(
                  title: Strings.nextQuest,
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
