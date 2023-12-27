import 'package:rumo_red_app/core/constants/imports.dart';

class GetReadyScreen extends StatelessWidget {
  const GetReadyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetReadyScreenController>(
      init: GetReadyScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.08,
                ),
                Text(
                  Strings.getReady,
                  style: context.textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  Strings.quizStartSoon,
                  style: context.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                AppImages.getReadyScreenImage,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  Strings.twentyMoreParticipants,
                  style: context.textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomParicipantsContainer(
                  title: controller.name,
                  image: controller.image,
                  buttonTitle: '',
                  isButtonRequired: false,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
