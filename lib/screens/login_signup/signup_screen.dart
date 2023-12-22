import 'package:rumo_red_app/core/constants/imports.dart';

class SignUpScreen extends StatelessWidget with Validator {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      init: SignUpController(),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.1,
                    ),
                    Center(
                      child: Text(
                        Strings.createAccout,
                        style: context.textTheme.displayLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    for (int i = 0;
                        i < controller.signUpTextFieldDataList.length;
                        i++)
                      CustomTextField(
                        hintText:
                            controller.signUpTextFieldDataList[i].hintText,
                        controller:
                            controller.signUpTextFieldDataList[i].controller,
                        validator:
                            controller.signUpTextFieldDataList[i].validator,
                      ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      checkColor: Colors.black,
                      fillColor: controller.isTermandconditionChecked
                          ? MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> state) {
                                return Colors.white;
                              },
                            )
                          : MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> state) {
                                return Colors.transparent;
                              },
                            ),
                      title: signUpBottomText(
                          context, Strings.iAgree, Strings.termsAndCondition),
                      value: controller.isTermandconditionChecked,
                      onChanged: controller.checkBoxValue,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                        title: Strings.signUp,
                        onPressed: () {
                          Get.to(
                            const DashBoardScreen(),
                          );
                        }),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(
                          LoginScreen(),
                        );
                      },
                      child: signUpBottomText(
                        context,
                        Strings.alreadyHaveAccout,
                        Strings.login,
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

  Widget signUpBottomText(BuildContext context, String text1, text2) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: text1,
              style: context.textTheme.displaySmall?.copyWith(
                color: AppColors.textFiledColor,
              )),
          TextSpan(
              text: text2,
              style: context.textTheme.displaySmall?.copyWith(
                color: AppColors.loginScreenBoldTextColor,
              )),
        ],
      ),
    );
  }
}
