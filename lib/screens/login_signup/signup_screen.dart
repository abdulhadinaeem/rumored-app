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
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Center(
                      child: Text('Create Your Account',
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        hintText: 'Name',
                        controller: controller.userNameController,
                        validator: userNameValidator),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        hintText: 'Email',
                        controller: controller.emailController,
                        validator: emailValidator),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        hintText: 'Mobile Number',
                        controller: controller.phoneNumberController,
                        validator: phoneNumberValidator),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        hintText: 'Country',
                        controller: controller.contaryController,
                        validator: countaryValidator),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        hintText: 'Password',
                        controller: controller.passwordController,
                        validator: passWordValidator),
                    const SizedBox(
                      height: 15,
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
                          "I agree with ", "Terms & Conditions"),
                      value: controller.isTermandconditionChecked,
                      onChanged: controller.checkBoxValue,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                        title: 'SignUp',
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
                      child:
                          signUpBottomText("Already have an account?", "Login"),
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

  Widget signUpBottomText(String text1, text2) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: const TextStyle(
              color: AppColors.textFiledColor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: text2,
            style: const TextStyle(
              color: AppColors.loginScreenBoldTextColor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
