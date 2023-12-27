import 'package:rumo_red_app/core/constants/imports.dart';

class CustomQuestionButton extends StatelessWidget {
  const CustomQuestionButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.95,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> state) => AppColors.textFiledColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: AppColors.creatQuizQuestionbuttonColor,
          ),
        ),
      ),
    );
  }
}
