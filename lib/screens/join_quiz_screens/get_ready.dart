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
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                screenHeading(context),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: CustomParicipantsContainer(
                    title: controller.name[controller.index],
                    image: controller.image[controller.index],
                    buttonTitle: '',
                    isButtonRequired: false,
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget screenHeading(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "  Get Ready!\n\n",
                    style: Theme.of(context).textTheme.displayLarge),
                const TextSpan(
                  text: "The Quiz Will Star Soon",
                  style: TextStyle(
                      color: AppColors.textFiledColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset("assets/images/get-ready.png"),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "20 more participants besides you in this game",
            style: TextStyle(
                color: AppColors.textFiledColor,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
