import 'package:flutter/material.dart';

import '../../../../../Core/utils/constants.dart';

class CustomBookCard extends StatelessWidget {
  final double aspectRatio;
  final double borderCircularRadius;
  const CustomBookCard({
    super.key,
    required this.aspectRatio,
    required this.borderCircularRadius,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
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
