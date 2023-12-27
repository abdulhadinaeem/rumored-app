import 'package:rumo_red_app/core/constants/imports.dart';

class CustomProgressIndicatorModel {
  double percent;
  Color color;
  String percentage, url, text;
  CustomProgressIndicatorModel(
      {required this.color,
      required this.percent,
      required this.percentage,
      required this.text,
      required this.url});
}
