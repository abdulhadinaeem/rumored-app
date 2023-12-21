import 'package:rumo_red_app/core/constants/imports.dart';

class CreatQuizGetReadyScreen extends StatelessWidget {
  CreatQuizGetReadyScreen(
      {super.key,
      required this.isSpiningScreen,
      required this.isSpinDrinking,
      required this.isDrinkingGame});
  bool isSpiningScreen;
  bool isSpinDrinking, isDrinkingGame;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateQuizGetReadyController>(
        init: CreateQuizGetReadyController(
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
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Center(
                  child: Text(
                    "Get Ready!",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "The Quiz Will Star Soon",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset("assets/images/get-ready2.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: CustomButton(
                    title: "Start",
                    onPressed: () {
                      controller.goToNextScreen();
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
