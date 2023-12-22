import '../../../../core/constants/imports.dart';

class CreatQuizByYourselfController extends GetxController {
  List<CustomQuestionButtonModel> buttonModelData = [
    CustomQuestionButtonModel(
      text: "5 questions",
    ),
    CustomQuestionButtonModel(
      text: "10 questions",
    ),
    CustomQuestionButtonModel(
      text: "15 questions",
    ),
    CustomQuestionButtonModel(
      text: "20 questions",
    ),
    CustomQuestionButtonModel(
      text: "25 questions",
    ),
    CustomQuestionButtonModel(
      text: "30 questions",
    )
  ];
  void goToNextScreen() {
    Get.to(
      const CreatQuizByYourselfPage2(),
    );
  }
}
