import 'package:rumo_red_app/core/constants/imports.dart';

class BottomNavBarController extends GetxController {
  late Color selectedColor;
  late Color unSelectedColor;
  late Color backGroundColor;
  late Color indexOneDecorationColor;
  late Color indexTwoDecorationColor;
  late Color indexOneBorderColor;
  late Color indexTwoBorderColor;
  int tabIndex = 1;
  void bottombarIndex(int index) {
    tabIndex = index;
    update();
  }
}
