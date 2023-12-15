import 'package:rumo_red_app/core/constants/imports.dart';

class CustomRadioButtonController extends GetxController {
  int selectedValue = 0;
  onChange(value) {
    selectedValue = value;
    update();
  }
}
