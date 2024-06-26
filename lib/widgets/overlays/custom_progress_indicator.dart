import 'package:rumo_red_app/core/constants/imports.dart';

class CustomProgressIndicator extends StatelessWidget {
  CustomProgressIndicator({
    super.key,
    required this.context,
    required this.percent,
    required this.color,
    required this.text,
    required this.percentage,
    required this.url,
  });

  final BuildContext context;
  final double percent;
  final Color color;
  final String text;
  String percentage;
  var url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            backgroundImage: AssetImage(url),
            radius: 20,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textFiledColor),
              ),
              Text(
                percentage,
                style: const TextStyle(color: AppColors.textFiledColor),
              ),
            ],
          ),
        ),
        LinearPercentIndicator(
          percent: percent,
          barRadius: const Radius.circular(16),
          progressColor: color,
          lineHeight: 10,
          width: context.width * 0.95,
        ),
      ],
    );
  }
}
