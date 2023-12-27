import 'package:rumo_red_app/core/constants/imports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                child: Form(
                  key: controller.formkey,
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
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: controller.isTermandconditionChecked,
                            onChanged: controller.checkBoxValue,
                            checkColor: Colors.black,
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> state) {
                                return Colors.white;
                              },
                            ),
                          ),
                          const Text(
                            Strings.iAgree,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              Strings.termsAndCondition,
                              style: TextStyle(color: AppColors.secondaryColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                          title: Strings.signUp,
                          onPressed: () {
                            if (controller.formkey.currentState!.validate()) {
                              Get.to(
                                const DashBoardScreen(),
                              );
                            }
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
          ),
        );
      },
    );
  }

  Widget signUpBottomText(BuildContext context, String text1, [String? text2]) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: context.textTheme.displaySmall?.copyWith(
              color: AppColors.textFiledColor,
            ),
          ),
          TextSpan(
            text: text2,
            style: context.textTheme.displaySmall?.copyWith(
              color: AppColors.loginScreenBoldTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
