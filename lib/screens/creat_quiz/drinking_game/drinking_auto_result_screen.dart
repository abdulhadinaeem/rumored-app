import 'package:rumo_red_app/core/constants/imports.dart';

class DrinkingAutoResultScreen extends StatelessWidget {
  DrinkingAutoResultScreen({super.key, required this.isDrinkingGame});
  bool isDrinkingGame;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrinkingAutoResultController>(
        init: DrinkingAutoResultController(isDrinkingGame: isDrinkingGame),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.drinkingScreenBackgroundTheme,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Veronica Park\nTake a shot!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textFiledColor),
                  ),
                  CustomProgressIndicator(
                      context: context,
                      percent: 0.8,
                      color: AppColors.resultScreenbottonColor1,
                      text: "Veronica park",
                      percentage: '55%',
                      url: "assets/images/frame.png"),
                  const SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset("assets/images/drinking11.svg"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  CustomButton(
                    title: "Next Question",
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
