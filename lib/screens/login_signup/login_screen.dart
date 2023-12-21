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
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      SvgPicture.asset(
                        "assets/images/logo11.svg",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Login to Your Account',
                          style: Theme.of(context).textTheme.displayLarge),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                          hintText: 'Email',
                          controller: controller.emailControlletr,
                          validator: emailValidator),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                          obscureText: true,
                          hintText: 'Password',
                          suffixIcon: const Icon(Icons.visibility_off),
                          controller: controller.passwordControlletr,
                          validator: passWordValidator),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(title: 'Login', onPressed: () {}),
                      const SizedBox(
                        height: 15,
                      ),
                      bottomText('Forget User / Password?', '', () {}),
                      bottomText(
                        'Don’t have an account? ',
                        'Sign Up',
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

  Widget bottomText(String title, boldTitle, Function() onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: const TextStyle(
                color: AppColors.loginScreensimpleTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: boldTitle,
              style: const TextStyle(
                color: AppColors.loginScreenBoldTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
