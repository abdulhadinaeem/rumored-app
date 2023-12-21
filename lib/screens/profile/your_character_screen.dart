import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:rumo_red_app/core/constants/imports.dart';

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
              SizedBox(height: context.height * 0.1),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Your Character",
                    style: TextStyle(
                      fontSize: 17,
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
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PageViewDotIndicator(
                            boxShape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                            size: const Size(50, 15),
                            currentItem: index,
                            count: controller.characterList.length,
                            unselectedColor: Colors.grey,
                            selectedColor: Colors.white,
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     for (int i = 0;
                        //         i < controller.characterList.length;
                        //         i++)
                        //       Padding(
                        //         padding: const EdgeInsets.all(4.0),
                        //         child: Container(
                        //           margin: const EdgeInsets.only(top: 10),
                        //           height: 10,
                        //           width: controller.currentIndex == i ? 60 : 35,
                        //           decoration: BoxDecoration(
                        //             borderRadius: const BorderRadius.all(
                        //               Radius.circular(20),
                        //             ),
                        //             shape: BoxShape.rectangle,
                        //             color: controller.currentIndex == i
                        //                 ? Colors.white
                        //                 : const Color.fromRGBO(
                        //                     255,
                        //                     255,
                        //                     255,
                        //                     0.36,
                        //                   ),
                        //           ),
                        //         ),
                        //       ),
                        //   ],
                        // ),
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
                  title: "Share",
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
