import 'package:rumo_red_app/core/constants/imports.dart';

class QuestionCreatController extends GetxController {
  QuestionCreatController({required this.isSpining});
  bool isSpining;
  int curentStep = 1;
  late final int totalStep;
  late List creatQuizList;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final textEditingController = TextEditingController();

  void initializeQuiz() {
    creatQuizList = [
      CreatQuizModel("Truth"),
      CreatQuizModel("Challenge"),
      CreatQuizModel("Secret"),
    ];

    totalStep = creatQuizList.length;
  }

  @override
  onInit() {
    initializeQuiz();
    super.onInit();
  }

  backButtonController() {
    if (curentStep == 1) {
      Get.back();
    } else {
      curentStep--;
      textEditingController.text = creatQuizList[curentStep - 1].value;
    }
    update();
  }

  valueUpdate() {
    if (formkey.currentState!.validate()) {
      if (curentStep <= totalStep) {
        creatQuizList[curentStep - 1].value = textEditingController.text;

        clear();
        print('VALUE');
        if (curentStep == totalStep) {
          Get.to(CreatQuizGetReadyScreen(
            isSpiningScreen: isSpining,
          ));
          return;
        }
        curentStep++;
        update();
      }
    }
  }

  clear() {
    textEditingController.clear();
    update();
  }
}
