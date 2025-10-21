import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceAndReviewCard extends StatelessWidget {
  final Color containerColor;
  final String containerText;
  final BorderRadiusGeometry borderRadius;
  const PriceAndReviewCard({
    super.key,
    required this.containerColor,
    required this.containerText,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: borderRadius,
        ),
        child: Center(
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
