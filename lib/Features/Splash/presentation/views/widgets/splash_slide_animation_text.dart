import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';

class SplashSlideAnimationText extends StatelessWidget {
  const SplashSlideAnimationText({
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
            child: Text(
              'Read Free Books',
              style: MyStyles.splashTextStyle,
            ),
          );
        },
      ),
    );
  }
}
