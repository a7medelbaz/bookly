import 'package:flutter/cupertino.dart';

abstract class MyRoutes {
  static const splashViewRoute = '/';
  static const homeViewRoute = '/homeViewRoute';
  static const bookDetailsViewRoute = '/bookDetailsViewRoute';
}

class MyConstants {
  static const kTransitionDuration = Duration(
    seconds: 1,
  );
}

class MyColors {
  static const kPrimaryColor = Color(0xff100B20);
}

class MyAssets {
  static const booklyLogo =
      'assets/images/Logo.png';
  static const testImage =
      'assets/images/GOAT.jpg';
  static const kPrimaryFont =
      'GT Sectra Fine Regular';
}
