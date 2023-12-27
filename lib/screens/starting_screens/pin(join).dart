import 'package:rumo_red_app/core/constants/imports.dart';

class PinJoinScreen extends StatelessWidget with Validator {
  PinJoinScreen(
      {super.key,
      required this.isJoinScreen,
      required this.isAutoGeneratedScreen,
      this.isMinor,
      this.isSpinWheelScreen,
      required this.isByYourself,
      required this.isDrinkingGame,
      required this.isAutoParticipantsDrinking,
      required this.isWithoutMinorDrinking});
  bool isByYourself,
      isJoinScreen,
      isAutoParticipantsDrinking,
      isAutoGeneratedScreen,
      isDrinkingGame,
      isWithoutMinorDrinking;
  bool? isMinor;

  bool? isSpinWheelScreen = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PinJoinController>(
      init: PinJoinController(
          isAutoGeneratedScreen: isAutoGeneratedScreen,
          isJoinScreen: isJoinScreen,
          isMinor: isMinor!,
          isSpinWheelScreen: isSpinWheelScreen ?? false,
          isByYourself: isByYourself,
          isDrinkingGame: isDrinkingGame,
          isWithoutMinorDrinking: isWithoutMinorDrinking,
          isAutoParticipantsDrinking: isAutoParticipantsDrinking),
      builder: (controller) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: controller.color,
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: controller.formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.07,
                    ),
                    Center(
                      child: AppImages.pinJoinImage,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      controller.text,
                      style: const TextStyle(
                        color: AppColors.textFiledColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    PinCodeTextField(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      appContext: context,
                      controller: controller.pincontroller,
                      length: 4,
                      validator: isJoinScreen ? pinJoinValidator : null,
                      cursorColor: AppColors.textFiledIconColor,
                      animationCurve: Curves.fastLinearToSlowEaseIn,
                      enableActiveFill: true,
                      readOnly: controller.readonly,
                      autoFocus: true,
                      keyboardType: TextInputType.number,
                      showCursor: isJoinScreen ? true : false,
                      pinTheme: PinTheme(
                          inactiveColor: Colors.white,
                          activeFillColor: AppColors.textFiledColor,
                          inactiveFillColor: Colors.transparent,
                          selectedFillColor: AppColors.textFiledColor,
                          fieldHeight: 55,
                          fieldWidth: 55,
                          selectedColor: AppColors.textFiledColor,
                          shape: PinCodeFieldShape.box,
                          activeColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      title: Strings.next,
                      onPressed: () {
                        if (controller.formkey.currentState!.validate()) {
                          controller.goTonextScreens();
                        }
                      },
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
}
