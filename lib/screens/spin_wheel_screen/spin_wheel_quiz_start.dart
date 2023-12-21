import 'package:rumo_red_app/core/constants/imports.dart';

class SpinWheelQuizStartScreen extends StatelessWidget {
  SpinWheelQuizStartScreen({super.key, required this.isDrinkingGame});
  bool isDrinkingGame;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpinWheelQuizStartController>(
      init: SpinWheelQuizStartController(isDrinkingGame: isDrinkingGame),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
          body: Column(
            children: [
              SizedBox(height: context.height * 0.1),
              const Center(
                child: Text(
                  "Spin The Wheel!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: context.height * 0.15),
              CustomSpinWheel(
                isDrinkingGame: isDrinkingGame,
              ),
              TextButton(
                onPressed: () {
                  Get.offAll(
                    const DashBoardScreen(),
                  );
                },
                child: const Text(
                  "Exit Quiz",
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
