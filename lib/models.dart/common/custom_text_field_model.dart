import 'package:rumo_red_app/core/constants/imports.dart';

class CustomTextFieldModel {
  bool? obscureText = false;
  String hintText;
  Widget? suffixIcon;
  TextEditingController controller;
  String? Function(String?) validator;
  CustomTextFieldModel(
      {required this.controller,
      required this.hintText,
      this.obscureText,
      this.suffixIcon,
      required this.validator});
}
