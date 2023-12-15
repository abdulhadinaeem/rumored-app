import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/creat_quiz/drinking_game/drinking_auto_participants.dart';

class AutoDrinkingPin extends StatelessWidget {
  AutoDrinkingPin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.drinkingScreenBackgroundTheme,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Center(
              child: Image.asset("assets/images/pin(join).png"),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Share PIN with your friends",
              style: const TextStyle(
                  color: AppColors.textFiledColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 15,
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              cursorColor: AppColors.textFiledIconColor,
              animationCurve: Curves.fastLinearToSlowEaseIn,
              enableActiveFill: true,
              pinTheme: PinTheme(
                  inactiveColor: Colors.white,
                  activeFillColor: AppColors.textFiledColor,
                  inactiveFillColor: Colors.transparent,
                  selectedFillColor: AppColors.textFiledColor,
                  fieldHeight: 30,
                  fieldWidth: 30,
                  selectedColor: AppColors.textFiledColor,
                  shape: PinCodeFieldShape.box,
                  activeColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              title: 'Next',
              onPressed: () {
                Get.to(
                  AutoDrinkingParticipants(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
