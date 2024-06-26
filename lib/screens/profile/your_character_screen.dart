import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class YourCharacterScreen extends StatelessWidget {
  const YourCharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<YourCharacterScreenController>(
      init: YourCharacterScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: context.height * 0.07,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    Strings.yourCharacter,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Flexible(
                child: PageView.builder(
                  itemCount: controller.characterList.length,
                  onPageChanged: controller.onPageChanged,
                  controller: controller.pageController,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          controller.characterList[index].title!,
                          style: context.textTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            controller.characterList[index].percentage!,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: context.height * 0.25,
                          width: context.width * 0.8,
                          child: Image.asset(
                            controller.characterList[index].image!,
                          ),
                        ),
                        Container(
                          height: context.height * 0.25,
                          width: context.width * 0.8,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              controller.characterList[index].aboutSection!,
                              style: context.textTheme.displaySmall,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        SmoothPageIndicator(
                          controller: controller.pageController,
                          count: 3,
                          effect: ExpandingDotsEffect(
                            dotColor: Colors.grey.shade400,
                            activeDotColor: Colors.white,
                            dotWidth: 20,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: CustomButton(
                  icon: true,
                  title: Strings.share,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
