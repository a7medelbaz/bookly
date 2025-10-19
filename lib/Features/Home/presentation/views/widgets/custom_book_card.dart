import 'package:flutter/material.dart';

import '../../../../../Core/utils/constants.dart';

class CustomBookCard extends StatelessWidget {
  final double aspectRatio;
  final double borderCircularRadius;
  final double horizontalPadding;
  const CustomBookCard({
    super.key,
    required this.aspectRatio,
    required this.borderCircularRadius,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                MyAssets.testImage,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(
              borderCircularRadius,
            ),
          ),
        ),
      ),
    );
  }
}
