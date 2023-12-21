import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/screens/starting_screens/onboard_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offAll(
        () => const OnBoardScreen(),
      ),
    );
    super.onInit();
  }
}
