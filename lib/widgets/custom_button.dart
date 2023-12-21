import 'package:rumo_red_app/core/constants/imports.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color,
      this.elevation,
      this.textColor,
      this.icon = false});
  final String title;
  bool? icon = false;
  final Function()? onPressed;
  final Color? color, textColor;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: textColor ?? AppColors.onBoardingTextColor,
                ),
              ),
              icon ?? false
                  ? SvgPicture.asset("assets/images/share1.svg")
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
