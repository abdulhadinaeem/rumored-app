import 'package:rumo_red_app/core/constants/imports.dart';

class AnalysisDataModel {
  String name;
  String title;
  String image;
  String percent;
  double percentage;
  Color progressColor;
  AnalysisDataModel(
      {required this.image,
      required this.name,
      required this.percent,
      required this.percentage,
      required this.progressColor,
      required this.title});
}
