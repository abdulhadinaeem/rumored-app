import 'package:rumo_red_app/core/constants/imports.dart';

class GetReadyScreenController extends GetxController {
  @override
  void onInit() {
    afterLoading();
    super.onInit();
  }

  void afterLoading() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(
        QuizQuestionScreen(
          isSpining: false,
        ),
      );
    });
  }
}
