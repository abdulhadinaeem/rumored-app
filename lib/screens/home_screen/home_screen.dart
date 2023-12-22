import 'package:rumo_red_app/core/constants/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              Center(
                child: AppImages.homeScreenImage,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    const EditionsScreen(),
                  );
                },
                child: AppImages.createButton,
              ),
              GestureDetector(
                onTap: () {
                  controller.goTONextScreen();
                },
                child: AppImages.joinButton,
              ),
            ],
          ),
        );
      },
    );
  }
}
