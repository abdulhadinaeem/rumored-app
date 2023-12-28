import 'package:rumo_red_app/core/constants/imports.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  bool? obscureText;
  TextEditingController controller;
  String? Function(String?) validator;
  Widget? suffixIcon;
  TextInputType? keyboardType;

  CustomTextField(
      {super.key,
      this.keyboardType,
      this.suffixIcon,
      required this.hintText,
      this.obscureText,
      required this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            keyboardType: keyboardType,
            controller: controller,
            validator: validator,
            cursorColor: AppColors.textFiledHintTextColor,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: AppColors.textFiledHintTextColor,
              ),
              suffixIcon: suffixIcon,
              suffixIconColor: AppColors.textFiledIconColor,
              filled: true,
              fillColor: AppColors.textFiledColor,

              // focusColor: AppColors.textFiledHintTextColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            obscureText: obscureText ?? false,
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
