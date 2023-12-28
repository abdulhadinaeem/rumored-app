import 'package:rumo_red_app/core/constants/imports.dart';

class SignUpScreen extends StatelessWidget with Validator {
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
            resizeToAvoidBottomInset: false,
            body: Padding(
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
                    CustomTextField(
                      hintText: 'Name',
                      keyboardType: TextInputType.name,
                      controller: controller.userNameController,
                      validator: userNameValidator,
                    ),
                    CustomTextField(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      validator: emailValidator,
                    ),
                    CustomTextField(
                      hintText: 'Mobile Number',
                      controller: controller.phoneNumberController,
                      keyboardType: TextInputType.phone,
                      validator: phoneNumberValidator,
                    ),
                    CustomTextField(
                      hintText: 'Country',
                      controller: controller.contaryController,
                      validator: countaryValidator,
                    ),
                    CustomTextField(
                      hintText: 'Password',
                      controller: controller.passwordController,
                      validator: passWordValidator,
                      obscureText: controller.isPasswordVisible,
                      suffixIcon: IconButton(
                        onPressed: controller.isShowPassword,
                        icon: controller.isPasswordVisible
                            ? const Icon(
                                Icons.visibility_off,
                                color: AppColors.textFiledHintTextColor,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: AppColors.textFiledHintTextColor,
                              ),
                      ),
                    ),
                    Row(
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
                        Text(
                          Strings.iAgree,
                          style: context.textTheme.displaySmall?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            Strings.termsAndCondition,
                            style: context.textTheme.displaySmall?.copyWith(
                              color: AppColors.loginScreenBoldTextColor,
                            ),
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
                        Get.off(
                          const LoginScreen(),
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
