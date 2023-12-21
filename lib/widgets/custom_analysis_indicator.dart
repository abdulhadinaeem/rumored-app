import 'package:rumo_red_app/core/constants/imports.dart';

class CustomAnalysisIndicator extends StatelessWidget {
  CustomAnalysisIndicator(
      {super.key,
      required this.name,
      required this.title,
      required this.image,
      required this.percent,
      required this.percentage,
      required this.progressColor});
  String title, name, image, percent;
  double percentage;
  Color progressColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.width * 0.9,
          child: Column(
            children: [
              ListTile(
                leading: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textFiledColor),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.primaryColor,
                          backgroundImage: AssetImage(image),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textFiledColor),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          percent,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textFiledColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              LinearPercentIndicator(
                percent: percentage,
                progressColor: progressColor,
                backgroundColor: Colors.white,
                lineHeight: 10,
                width: context.width * 0.9,
                barRadius: const Radius.circular(10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
