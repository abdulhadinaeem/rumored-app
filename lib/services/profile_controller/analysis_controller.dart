import 'package:rumo_red_app/core/constants/imports.dart';

class AnalysisController extends GetxController {
  List<AnalysisDataModel> analysisData = [
    AnalysisDataModel(
      name: "Veronica park",
      title: "Travel Lover",
      image: "assets/images/p-1.png",
      percent: "90%",
      percentage: 0.9,
      progressColor: AppColors.secondaryColor,
    ),
    AnalysisDataModel(
      name: "April John",
      title: "Jealous One",
      image: "assets/images/frame.png",
      percent: "80%",
      percentage: 0.8,
      progressColor: AppColors.resultScreenbottonColor1,
    ),
    AnalysisDataModel(
      name: "Veronica park",
      title: "Travel Lover",
      image: "assets/images/p-1.png",
      percent: "100%",
      percentage: 1,
      progressColor: AppColors.resultScreenbottonColor4,
    ),
  ];
  List name = [
    "Jonathan",
    "Will Hopper",
    "April John",
    "You",
    "Jonathan",
    "Will Hopper",
    "April John",
  ];
  List image = [
    "assets/images/frame.png",
    "assets/images/p-1.png",
    "assets/images/p-2.png",
    "assets/images/p-3.png",
    "assets/images/frame.png",
    "assets/images/p-1.png",
    "assets/images/p-2.png",
    "assets/images/p-3.png",
  ];
}
