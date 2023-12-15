import 'package:rumo_red_app/core/constants/imports.dart';

mixin GradinetScaffold {
  containerGradient(
    Scaffold scaffold,
  ) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0XFF2B9689), Color(0XFF2B5696)],
        ),
      ),
      child: scaffold,
    );
  }

  drinkingContainerGradient(
    Scaffold scaffold,
  ) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0XFF873AAB), Color(0XFF3A46AB)],
        ),
      ),
      child: scaffold,
    );
  }
}
