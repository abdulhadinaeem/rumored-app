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
                height: context.height * 0.1,
              ),
              Text(
                Strings.youHaveToTake,
                style: context.textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              for (int i = 0; i < controller.resultScreenDataList.length; i++)
                CustomProgressIndicator(
                  context: context,
                  percent: controller.resultScreenDataList[i].percent,
                  color: controller.resultScreenDataList[i].color,
                  text: controller.resultScreenDataList[i].text,
                  percentage: controller.resultScreenDataList[i].percentage,
                  url: controller.resultScreenDataList[i].url,
                ),
              const SizedBox(height: 15),
              AppImages.resultScreenImage,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: CustomButton(
                  title: Strings.nextQuest,
                  onPressed: () {
                    Get.to(
                      ResultWinScreen(
                        isAutoParticipantsDrinking: false,
                        isDrinkingGame: false,
                        isSpining: false,
                        isSpinWheelParticipants: false,
                      ),
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  controller.goToNextScreen();
                },
                child: Text(
                  Strings.exitQuiz,
                  style: context.textTheme.displaySmall?.copyWith(
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
