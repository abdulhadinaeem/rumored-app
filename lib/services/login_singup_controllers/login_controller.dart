import 'package:rumo_red_app/core/constants/imports.dart';

class LoginController extends GetxController with Validator {
  final TextEditingController emailControlletr = TextEditingController();

  final TextEditingController passwordControlletr = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late List<CustomTextFieldModel> loginTextFieldDataList;
  late bool passWordVisible;
  iconUpdate() {
    passWordVisible = !passWordVisible;
    update();
  }

  void loginData() {
    loginTextFieldDataList = [
      CustomTextFieldModel(
        hintText: 'Email',
        controller: emailControlletr,
        validator: emailValidator,
      ),
      CustomTextFieldModel(
        hintText: 'Password',
        controller: passwordControlletr,
        validator: passWordValidator,
        obscureText: passWordVisible,
      ),
    ];
  }

  @override
  onInit() {
    passWordVisible = true;
    loginData();
    update();
    super.onInit();
  }
}

class CustomTextFieldModel {
  bool? obscureText = false;
  String hintText;
  Widget? suffixIcon;
  TextInputType? keyBoardType;
  TextEditingController controller;
  String? Function(String?) validator;
  CustomTextFieldModel(
      {required this.controller,
      this.keyBoardType,
      required this.hintText,
      this.obscureText,
      this.suffixIcon,
      required this.validator});
}
