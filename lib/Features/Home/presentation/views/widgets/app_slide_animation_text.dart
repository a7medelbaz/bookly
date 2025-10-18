import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class AppSlideAnimationText
    extends StatelessWidget {
  const AppSlideAnimationText({
    super.key,
    required this.slideAnimation,
    required this.text,
  });

  final Animation<Offset> slideAnimation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, widget) {
        return SlideTransition(
          position: slideAnimation,
          child: Text(
            text,
            style: MyStyles.appSlideAnimationText
          ),
        );
      },
    );
  }
}
