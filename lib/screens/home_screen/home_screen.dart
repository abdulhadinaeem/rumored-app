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
                  child: SvgPicture.asset("assets/images/home11.svg"),
                ),
                // Image.asset("assets/images/home-image-2.png"),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      const EditionsScreen(),
                    );
                  },
                  child: SvgPicture.asset('assets/images/create11.svg'),
                ),
                GestureDetector(
                  onTap: () {
                    controller.goTONextScreen();
                  },
                  child: SvgPicture.asset('assets/images/join11.svg'),
                ),
              ],
            ),
          );
        });
  }
}
