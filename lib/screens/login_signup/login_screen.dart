import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/services/login_singup_controllers/login_controller.dart';

class LoginScreen extends StatelessWidget with Validator {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return Scaffold(
            body: Form(
              key: controller.formkey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Image.asset("assets/images/splash-logo.png"),
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
                    bottomText('Don’t have an account? ', 'Sign Up', () {
                      Get.to(
                        SignUpScreen(),
                      );
                    }),
                  ],
                ),
              ),
            ),
          );
        });
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
                  fontWeight: FontWeight.w400),
            ),
            TextSpan(
                text: boldTitle,
                style: const TextStyle(
                    color: AppColors.loginScreenBoldTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
          ],
        ),
      ),
    );
  }
}