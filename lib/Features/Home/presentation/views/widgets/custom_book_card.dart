import 'package:flutter/material.dart';

class CustomBookCard extends StatelessWidget {
  final double aspectRatio;
  final double borderCircularRadius;
  final double horizontalPadding;
  final String? imageUrl;
  const CustomBookCard({
    super.key,
    required this.aspectRatio,
    required this.borderCircularRadius,
    required this.horizontalPadding,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl!),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(borderCircularRadius),
          ),
        ),
      ),
    );
  }
}
