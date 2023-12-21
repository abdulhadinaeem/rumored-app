import 'package:rumo_red_app/core/constants/imports.dart';

class ResultWinScreen extends StatelessWidget {
  ResultWinScreen(
      {super.key,
      required this.isDrinkingGame,
      required this.isSpining,
      required this.isSpinWheelParticipants});
  bool isDrinkingGame, isSpinWheelParticipants, isSpining;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResultWinScreenController>(
      init: ResultWinScreenController(
          isSpining: isSpining,
          isDrinkingGame: isDrinkingGame,
          isSpinWheelParticipants: isSpinWheelParticipants),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.color,
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
              SvgPicture.asset("assets/images/win11.svg"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: CustomButton(
                  title: "Restart",
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
