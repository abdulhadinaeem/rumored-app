import 'package:flutter/material.dart';

class PageRoutes {
  static gotoNextScreen(BuildContext context, Widget navigateTo) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => navigateTo,
        ),
      );
}
