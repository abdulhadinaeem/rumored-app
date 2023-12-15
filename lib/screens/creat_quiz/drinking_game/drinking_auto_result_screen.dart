import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/join_quiz_screens/result_win_screen.dart';

class DrinkingAutoResultScreen extends StatelessWidget {
  const DrinkingAutoResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.drinkingScreenBackgroundTheme,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const Text(
              "Veronica Park\nTake a shot!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textFiledColor),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomProgressIndicator(
                context: context,
                percent: 0.8,
                color: AppColors.resultScreenbottonColor1,
                text: "Veronica park",
                percentage: '55%',
                url: ""),
            const SizedBox(
              height: 15,
            ),
            Image.asset("assets/images/drinking.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomButton(
                title: "Next Question",
                onPressed: () {
                  Get.to(ResultWinScreen(isDrinkingGame: true));
                }),
          ],
        ),
      ),
    );
  }
}