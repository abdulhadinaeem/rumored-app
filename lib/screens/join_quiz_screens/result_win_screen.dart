import 'package:rumo_red_app/core/constants/imports.dart';

class ResultWinScreen extends StatelessWidget {
  ResultWinScreen({super.key, required this.isDrinkingGame});
  bool isDrinkingGame;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResultWinScreenController>(
        init: ResultWinScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: isDrinkingGame
                ? AppColors.drinkingScreenBackgroundTheme
                : AppColors.primaryColor,
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text("Try Again",
                    style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Restart & Play Again",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textFiledColor),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Image.asset("assets/images/try-again.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CustomButton(
                      title: "Restart",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return DashBoardScreen();
                            },
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }
}
