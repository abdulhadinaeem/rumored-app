import 'package:rumo_red_app/core/constants/imports.dart';

class QuestionCreatScreen extends StatelessWidget {
  QuestionCreatScreen(
      {super.key,
      required this.isSpinWheelParticipants,
      required this.isSpinDrinkingGame,
      required this.isDrinkingGame});
  bool isSpinWheelParticipants, isDrinkingGame;
  bool isSpinDrinkingGame;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionCreatController>(
      init: QuestionCreatController(
          isSpining: isSpinWheelParticipants,
          isSpinDrinkingGame: isSpinDrinkingGame,
          isSpinWheelParticipants: isSpinWheelParticipants,
          isDrinkingGame: isDrinkingGame),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            backgroundColor: controller.color,
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  controller.backButtonController();
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: controller.image,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${controller.curentStep.toString()}/3",
                      style: context.textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomLinearPercentIndicator(
                      progressColor: AppColors.secondaryColor,
                      percent: controller.curentStep / controller.totalStep,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        for (int i = 0;
                            i < controller.creatQuizList.length;
                            i++)
                          buildSelectedIcons(
                            context,
                            Icons.circle_rounded,
                            controller.creatQuizList[i].title,
                            controller.curentStep >= i + 1
                                ? AppColors.secondaryColor
                                : Colors.white,
                          ),
                      ],
                    ),
                    Form(
                      key: controller.formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              style: TextStyle(
                                color: controller.textFormColor,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.fillField;
                                } else {
                                  return null;
                                }
                              },
                              controller: controller.textEditingController,
                              decoration: InputDecoration(
                                hintText:
                                    "Enter ${controller.creatQuizList[controller.curentStep].title}",
                                hintStyle: TextStyle(
                                  color: controller.textFormColor,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              maxLines: 8,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomButton(
                            title: Strings.next,
                            onPressed: () {
                              controller.valueUpdate();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildSelectedIcons(
      BuildContext context, IconData? icon, String text, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Icon(icon, size: 10, color: iconColor),
          Text(
            text,
            style: context.textTheme.displaySmall?.copyWith(
              color: AppColors.textFiledColor,
            ),
          ),
          SizedBox(
            width: context.width * 0.1,
          ),
        ],
      ),
    );
  }
}
