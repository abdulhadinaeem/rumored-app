import 'package:rumo_red_app/core/constants/imports.dart';

class QuestionCreatController extends GetxController {
  QuestionCreatController({
    required this.isSpining,
    required this.isSpinDrinkingGame,
    required this.isSpinWheelParticipants,
    required this.isDrinkingGame,
  });
  bool isSpining;
  bool isSpinDrinkingGame;
  bool isSpinWheelParticipants, isDrinkingGame;
  int curentStep = 0;
  late Color color;
  late Color textFormColor;
  late SvgPicture image;
  late final int totalStep;
  late List creatQuizList;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final textEditingController = TextEditingController();
  void backGroundColor() {
    color = isSpinDrinkingGame
        ? AppColors.drinkingScreenBackgroundTheme
        : isSpinWheelParticipants
            ? AppColors.spinWheelScreenBackGroundColor
            : AppColors.primaryColor;
  }

  void showImage() {
    image = isSpinWheelParticipants
        ? isSpinDrinkingGame
            ? AppImages.twoDrinksImage
            : AppImages.textfieldImage
        : AppImages.questionmarkTextFieldImage;
  }

  void textFormTextColor() {
    textFormColor = isSpinDrinkingGame || isSpinWheelParticipants
        ? Colors.white
        : Colors.black;
    update();
  }

  void initializeQuiz() {
    creatQuizList = [
      CreatQuizModel(
        Strings.truth,
      ),
      CreatQuizModel(
        Strings.challenge,
      ),
      CreatQuizModel(
        Strings.secret,
      ),
    ];

    totalStep = creatQuizList.length;
  }

  @override
  onInit() {
    initializeQuiz();
    backGroundColor();
    textFormTextColor();
    showImage();
    super.onInit();
  }

  backButtonController() {
    if (curentStep == 0) {
      Get.back();
    } else {
      curentStep--;
      textEditingController.text = creatQuizList[curentStep].value;
    }
    update();
  }

  valueUpdate() {
    if (formkey.currentState!.validate()) {
      if (curentStep <= totalStep) {
        print("value");
        creatQuizList[curentStep].value = textEditingController.text;
        curentStep++;

        clear();

        if (curentStep == totalStep) {
          print("nextScreen");
          Get.to(
            CreatQuizGetReadyScreen(
              isSpiningScreen: isSpining,
              isSpinDrinking: isSpinDrinkingGame,
              isDrinkingGame: isDrinkingGame,
              isSpinWheelParticipants: isSpinWheelParticipants,
            ),
          );
          return;
        }
      }
    }
  }

  clear() {
    textEditingController.clear();
    update();
  }
}
