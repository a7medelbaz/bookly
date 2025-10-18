import 'package:flutter/material.dart';

import '../../../../../Core/utils/constants.dart';

class CustomBookCard
    extends StatelessWidget {
  const CustomBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
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
              20,
            ),
          ),
        ),
      ),
    );
  }
}
