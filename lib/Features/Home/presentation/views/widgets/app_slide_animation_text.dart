import '../../../../../Core/utils/styles.dart';
import 'package:flutter/material.dart';

class AppSlideAnimationText
    extends StatelessWidget {
  const AppSlideAnimationText({
    super.key,
    required this.slideAnimation,
    required this.text,
    required this.alignment,
    required this.padding,
  });

  final Animation<Offset> slideAnimation;
  final String text;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, widget) {
        return SlideTransition(
          position: slideAnimation,
          child: Padding(
            padding: padding,
            child: Align(
              alignment: alignment,
              child: Text(
                text,
                style: MyStyles.textStyle18,
              ),
            ),
          ),
        );
      },
    );
  }
}
