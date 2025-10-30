import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';

class PriceAndReviewCard extends StatelessWidget {
  final Color containerColor;
  final String containerText;
  final BorderRadiusGeometry borderRadius;
  final VoidCallback? onPressed; // Add onPressed callback

  const PriceAndReviewCard({
    super.key,
    required this.containerColor,
    required this.containerText,
    required this.borderRadius,
    this.onPressed, // Optional callback
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed ?? () {}, // Default empty function if null
          style: ElevatedButton.styleFrom(
            backgroundColor: containerColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            elevation: 0, // Remove shadow if you want flat design
          ),
          child: Text(
            containerText,
            style: MyStyles.textStyle16.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
