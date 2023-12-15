import 'package:rumo_red_app/core/constants/imports.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offAll(
        () => const DashBoardScreen(),
      ),
    );
    super.onInit();
  }
}
