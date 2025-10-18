import 'package:bookly/Core/utils/constants.dart';
import 'package:flutter/material.dart'
    show TextStyle, FontWeight;

abstract class MyStyles {
  static const splashTextStyle = TextStyle(
    fontFamily: MyAssets.kPrimaryFont,
    fontSize: 18,
  );
  static const appSlideAnimationText = TextStyle(
    fontFamily: MyAssets.kPrimaryFont,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
}
