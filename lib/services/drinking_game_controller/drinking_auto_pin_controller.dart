import 'package:rumo_red_app/core/constants/imports.dart';

class AutoDrinkingPinController extends GetxController {
  AutoDrinkingPinController({required this.isByYourself});
  bool isByYourself;
  void goToNextScreen() {
    // Get.to(
    //   AutoDrinkingParticipants(
    //     isByYourself: isByYourself,
    //   ),
    // );
  }
}
