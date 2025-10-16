import 'package:bookly/Core/utils/constants.dart';
import 'package:bookly/Features/Splash/presentation/widgets/slide_animation_text.dart';
import 'package:flutter/material.dart';

class BodyOfSplashView extends StatefulWidget {
  const BodyOfSplashView({super.key});

  @override
  State<BodyOfSplashView> createState() =>
      _BodyOfSplashViewState();
}

class _BodyOfSplashViewState
    extends State<BodyOfSplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          CrossAxisAlignment.stretch,
      children: [
        Image.asset(MyAssets.booklyLogo),
        SlideAnimationText(
          slideAnimation: slideAnimation,
        ),
      ],
    );
  }
}
