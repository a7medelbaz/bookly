import 'package:bookly/Core/utils/constants.dart';
import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/Splash/presentation/views/widgets/slide_animation_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
    initSlidingAnimation();
    // FutureDelay
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void initSlidingAnimation() {
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

  Future<Null> navigateToHomeView() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.off(
          () => HomeView(),
          transition:
              Transition.rightToLeftWithFade,
          duration:
              MyConstants.kTransitionDuration,
        );
      },
    );
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
