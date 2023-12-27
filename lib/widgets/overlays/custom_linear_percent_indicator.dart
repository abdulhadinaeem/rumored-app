import 'package:rumo_red_app/core/constants/imports.dart';

class CustomLinearPercentIndicator extends StatelessWidget {
  const CustomLinearPercentIndicator({
    super.key,
    required this.progressColor,
    required this.percent,
  });
  final Color progressColor;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      barRadius: const Radius.circular(16),
      width: MediaQuery.of(context).size.width * 0.9,
      lineHeight: 10,
      progressColor: progressColor,
      animation: true,
      percent: percent,
      animateFromLastPercent: true,
      backgroundColor: Colors.white,
      restartAnimation: false,
    );
  }
}
