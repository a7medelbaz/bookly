
import 'package:bookly/Core/utils/constants.dart';
import 'package:flutter/material.dart';

class SlideAnimationText extends StatelessWidget {
  const SlideAnimationText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: slideAnimation,
        builder: (context, widget) {
          return SlideTransition(
            position: slideAnimation,
            child: const Text(
              'Read Free Books',
              style: TextStyle(
                fontFamily:
                    MyAssets.kPrimaryFont,
                fontSize: 18,
              ),
            ),
          );
        },
      ),
    );
  }
}