import 'package:flutter/material.dart' show TextStyle, FontWeight;

import 'constants.dart';

abstract class MyStyles {
  static const splashTextStyle = TextStyle(
    fontFamily: MyAssets.kPrimaryFont,
    fontSize: 18,
  );
  static const textStyle14 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
  static const textStyle16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const textStyle18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static const textStyle20 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20,
    fontFamily: MyAssets.kPrimaryFont,
  );
  static const textStyle30 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 30,
    fontFamily: MyAssets.kPrimaryFont,
  );
}
