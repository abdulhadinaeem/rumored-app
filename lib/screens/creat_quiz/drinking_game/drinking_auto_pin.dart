import 'package:rumo_red_app/core/constants/imports.dart';

class AutoDrinkingPin extends StatelessWidget {
  AutoDrinkingPin({super.key, required this.isByYourself});
  bool isByYourself;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AutoDrinkingPinController>(
        init: AutoDrinkingPinController(isByYourself: isByYourself),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.drinkingScreenBackgroundTheme,
            body: Padding(
              padding: const EdgeInsets.all(
                15.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/pin(join).png",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Share PIN with your friends",
                    style: TextStyle(
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
                    length: 4,
                    cursorColor: AppColors.textFiledIconColor,
                    animationCurve: Curves.fastLinearToSlowEaseIn,
                    enableActiveFill: true,
                    autoFocus: true,
                    keyboardType: TextInputType.number,
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
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    title: 'Next',
                    onPressed: () {
                      controller.goToNextScreen();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
