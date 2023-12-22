import 'package:rumo_red_app/core/constants/imports.dart';

class SignUpController extends GetxController with Validator {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController contaryController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isTermandconditionChecked = false;
  void checkBoxValue(newValue) {
    isTermandconditionChecked = !isTermandconditionChecked;
    update();
  }

  late List<CustomTextFieldModel> signUpTextFieldDataList;

  void signUpData() {
    signUpTextFieldDataList = [
      CustomTextFieldModel(
          hintText: 'Name',
          controller: userNameController,
          validator: userNameValidator),
      CustomTextFieldModel(
          hintText: 'Email',
          controller: emailController,
          validator: emailValidator),
      CustomTextFieldModel(
          hintText: 'Mobile Number',
          controller: phoneNumberController,
          validator: phoneNumberValidator),
      CustomTextFieldModel(
          hintText: 'Country',
          controller: contaryController,
          validator: countaryValidator),
      CustomTextFieldModel(
        hintText: 'Password',
        controller: passwordController,
        validator: passWordValidator,
        obscureText: true,
      ),
    ];
  }

  @override
  onInit() {
    signUpData();
    update();
    super.onInit();
  }
}
