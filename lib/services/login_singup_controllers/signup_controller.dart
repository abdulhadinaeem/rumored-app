import 'package:rumo_red_app/core/constants/imports.dart';

class SignUpController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController contaryController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isTermandconditionChecked = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late bool isPasswordVisible;
  late Widget icon;
  String countaryValue = "";
  void checkBoxValue(newValue) {
    isTermandconditionChecked = !isTermandconditionChecked;
    update();
  }

  void isShowPassword() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

  @override
  onInit() {
    isPasswordVisible = true;

    update();
    super.onInit();
  }
}
