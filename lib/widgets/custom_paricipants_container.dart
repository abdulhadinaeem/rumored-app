import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/services/widget_controllers/custom_paricipants_container_controller.dart';

class CustomParicipantsContainer extends StatelessWidget {
  CustomParicipantsContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.buttonTitle,
      required this.isButtonRequired,
      this.onPressed});
  String buttonTitle;
  List<String> title, image;
  dynamic Function()? onPressed;
  bool isButtonRequired;

  @override
  Widget build(
    BuildContext context,
  ) {
    return GetBuilder<CustomParicipantsContainerController>(
        init: CustomParicipantsContainerController(),
        builder: (controller) {
          return Flexible(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: AppColors.getReadyContainerColor),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      const Center(
                        child: Text(
                          "Participants",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textFiledColor),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      listtile(context),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                isButtonRequired
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(
                          title: buttonTitle,
                          onPressed: onPressed,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          );
        });
  }

  Widget listtile(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 4; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                shape: BoxShape.rectangle,
                color: AppColors.textFiledColor,
              ),
              child: Center(
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(image[i]),
                      radius: 17,
                    ),
                  ),
                  title: Text(
                    title[i],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: TextButton(
                    onPressed: () {},
                    child: i == 0
                        ? const SizedBox()
                        : const Text(
                            "Remove",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
