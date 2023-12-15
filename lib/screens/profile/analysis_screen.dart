import 'package:rumo_red_app/core/constants/imports.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnalysisController>(
        init: AnalysisController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text("Participants"),
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.3),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Participants",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            for (int i = 0; i <= 6; i++)
                              customContainer(
                                controller.name[i],
                                controller.image[i],
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomAnalysisIndicator(
                  name: "Veronica park",
                  title: "Travel Lover",
                  image: "assets/images/p-1.png",
                  percent: "90%",
                  percentage: 0.9,
                  progressColor: Colors.yellow,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomAnalysisIndicator(
                  name: "April John",
                  title: "Jealous One",
                  image: "assets/images/frame.png",
                  percent: "80%",
                  percentage: 0.8,
                  progressColor: Colors.yellow,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomAnalysisIndicator(
                  name: "Veronica park",
                  title: "Travel Lover",
                  image: "assets/images/p-1.png",
                  percent: "100%",
                  percentage: 1,
                  progressColor: Colors.yellow,
                )
              ],
            ),
          );
        });
  }

  Widget customContainer(String title, image) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 18, bottom: 14, left: 6, right: 6),
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  image,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.w400,
                    color: AppColors.profileScreenListTextColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
        ListTile(
          leading: Text(
            title,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.textFiledColor),
          ),
          trailing: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      backgroundImage: AssetImage(image),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30, left: 4),
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textFiledColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
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
        ),
        LinearPercentIndicator(
          percent: percentage,
          progressColor: progressColor,
          backgroundColor: Colors.white,
          lineHeight: 10,
          width: MediaQuery.of(context).size.width * 0.9,
          barRadius: const Radius.circular(10),
        )
      ],
    );
  }
}
