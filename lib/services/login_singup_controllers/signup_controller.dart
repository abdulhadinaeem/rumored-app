import 'package:rumo_red_app/core/constants/imports.dart';

class SignUpController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController contaryController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isTermandconditionChecked = false;
  void checkBoxValue(newValue) {
    isTermandconditionChecked = !isTermandconditionChecked;
    update();
  }
}
