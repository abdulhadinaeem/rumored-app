import 'package:rumo_red_app/core/constants/imports.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResultController>(
      init: ResultController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text("You have to take\n  the challenge!",
                  style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 15),
              CustomProgressIndicator(
                  context: context,
                  percent: 0.9,
                  color: AppColors.resultScreenbottonColor1,
                  text: "You",
                  percentage: "55%",
                  url: "assets/images/frame.png"),
              const SizedBox(height: 15),
              CustomProgressIndicator(
                  context: context,
                  percent: 0.5,
                  color: AppColors.resultScreenbottonColor2,
                  text: "April John",
                  percentage: "40%",
                  url: "assets/images/p-3.png"),
              const SizedBox(height: 15),
              CustomProgressIndicator(
                  context: context,
                  percent: 0.1,
                  color: AppColors.resultScreenbottonColor3,
                  text: "Veronica Park",
                  percentage: "3%",
                  url: "assets/images/p-1.png"),
              const SizedBox(height: 15),
              CustomProgressIndicator(
                  context: context,
                  percent: 0.05,
                  color: AppColors.resultScreenbottonColor4,
                  text: "Johnathon Roy",
                  percentage: "2%",
                  url: "assets/images/p-2.png"),
              const SizedBox(height: 15),
              const SizedBox(
                height: 15,
              ),
              SvgPicture.asset("assets/images/result11.svg"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: CustomButton(
                    title: "Next Question",
                    onPressed: () {
                      Get.to(
                        ResultWinScreen(
                          isDrinkingGame: false,
                          isSpining: false,
                          isSpinWheelParticipants: false,
                        ),
                      );
                    }),
              ),
              TextButton(
                onPressed: () {
                  Get.to(
                    ResultWinScreen(
                      isSpining: false,
                      isDrinkingGame: false,
                      isSpinWheelParticipants: false,
                    ),
                  );
                },
                child: const Text(
                  "Exit Quiz",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textFiledColor,
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
