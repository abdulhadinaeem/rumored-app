import 'package:rumo_red_app/core/constants/imports.dart';

class WatchAdController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: const AfterAdScreen(),
          ),
        ),
      )?.then(
        (value) => Get.back(),
      );
    });
    super.onInit();
  }
}
