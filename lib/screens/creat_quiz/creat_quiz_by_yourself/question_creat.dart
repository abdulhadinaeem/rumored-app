import 'package:rumo_red_app/core/constants/imports.dart';

class QuestionCreatScreen extends StatelessWidget {
  QuestionCreatScreen({super.key, required this.isSpinWheelParticipants});
  bool isSpinWheelParticipants;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionCreatController>(
        init: QuestionCreatController(isSpining: isSpinWheelParticipants),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
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
                      child: isSpinWheelParticipants
                          ? Image.asset("assets/images/textfieldimg.png")
                          : Image.asset("assets/images/question.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${controller.curentStep.toString()}/3",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textFiledColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomLinearPercentIndicator(
                        progressColor: AppColors.secondaryColor,
                        percent: controller.curentStep / controller.totalStep),
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
                                  : Colors.white),
                        // buildSelectedIcons(
                        //     context,
                        //     Icons.circle_rounded,
                        //     " Challenge",
                        //     controller.curentStep >= 2
                        //         ? AppColors.secondaryColor
                        //         : Colors.white),
                        // buildSelectedIcons(
                        //     context,
                        //     Icons.circle_rounded,
                        //     " Secret",
                        //     controller.curentStep == 3
                        //         ? AppColors.secondaryColor
                        //         : Colors.white),
                      ],
                    ),
                    Form(
                      key: controller.formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please fill the field';
                                } else {
                                  return null;
                                }
                              },
                              controller: controller.textEditingController,
                              decoration: InputDecoration(
                                hintText:
                                    "Enter ${controller.creatQuizList[controller.curentStep - 1].title}",
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
                              title: "Next",
                              onPressed: () {
                                controller.valueUpdate();
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
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
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.textFiledColor),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
        ],
      ),
    );
  }
}
