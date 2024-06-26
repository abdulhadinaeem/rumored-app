import 'package:rumo_red_app/core/constants/imports.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnalysisController>(
      init: AnalysisController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: context.height * 0.08,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    Strings.participants,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  bottom: 12,
                ),
                child: Container(
                  width: context.width * 0.9,
                  height: context.height * 0.2,
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
                          Strings.participants,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
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
                              () {
                                Get.to(
                                  const YourCharacterScreen(),
                                );
                              },
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                Strings.resultSummry,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              for (int i = 0; i < controller.analysisData.length; i++)
                CustomAnalysisIndicator(
                  name: controller.analysisData[i].name,
                  title: controller.analysisData[i].title,
                  image: controller.analysisData[i].image,
                  percent: controller.analysisData[i].percent,
                  percentage: controller.analysisData[i].percentage,
                  progressColor: controller.analysisData[i].progressColor,
                ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget customContainer(String title, image, Function()? onTap) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(top: 18, bottom: 18, left: 6, right: 6),
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.profileScreenListTextColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
