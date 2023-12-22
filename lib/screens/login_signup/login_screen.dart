import 'package:rumo_red_app/core/constants/imports.dart';

class LoginScreen extends StatelessWidget with Validator {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            body: Form(
              key: controller.formkey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.10,
                      ),
                      AppImages.logo,
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        Strings.loginToYourAccount,
                        style: context.textTheme.displayLarge,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      for (int i = 0;
                          i < controller.loginTextFieldDataList.length;
                          i++)
                        CustomTextField(
                          hintText:
                              controller.loginTextFieldDataList[i].hintText,
                          controller:
                              controller.loginTextFieldDataList[i].controller,
                          validator:
                              controller.loginTextFieldDataList[i].validator,
                          obscureText:
                              controller.loginTextFieldDataList[i].obscureText,
                          suffixIcon:
                              controller.loginTextFieldDataList[i].suffixIcon,
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                        title: Strings.login,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      bottomText(
                        context,
                        Strings.forgetUserAndPass,
                        '',
                        () {},
                      ),
                      bottomText(
                        context,
                        Strings.dontHaveAnAccount,
                        Strings.signUp,
                        () {
                          Get.to(
                            SignUpScreen(),
                          );
                        },
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

  Widget bottomText(
      BuildContext context, String title, boldTitle, Function() onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: context.textTheme.displaySmall?.copyWith(
                color: AppColors.loginScreensimpleTextColor,
              ),
            ),
            TextSpan(
              text: boldTitle,
              style: context.textTheme.displaySmall?.copyWith(
                color: AppColors.loginScreenBoldTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
