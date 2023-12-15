import 'package:rumo_red_app/core/constants/imports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color,
      this.elevation,
      this.textColor});
  final String title;
  final Function()? onPressed;
  final Color? color, textColor;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> state) => elevation ?? 0.0),
        maximumSize: MaterialStateProperty.resolveWith(
            (states) => const Size(500.0, 46.0)),
        backgroundColor: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) => color ?? AppColors.secondaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: textColor ?? AppColors.onBoardingTextColor,
          ),
        ),
      ),
    );
  }
}
