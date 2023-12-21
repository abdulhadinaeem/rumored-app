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
                  child: Image.asset("assets/images/home-image-1.png"),
                ),
                Image.asset("assets/images/home-image-2.png"),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      const EditionsScreen(),
                    );
                  },
                  child: Image.asset('assets/images/home-creat.png'),
                ),
                GestureDetector(
                  onTap: () {
                    controller.goTONextScreen();
                  },
                  child: Image.asset('assets/images/home-join.png'),
                ),
              ],
            ),
          );
        });
  }
}
