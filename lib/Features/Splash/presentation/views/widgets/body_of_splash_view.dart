import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/constants.dart';
import 'splash_slide_animation_text.dart';

class BodyOfSplashView extends StatefulWidget {
  const BodyOfSplashView({super.key});

  @override
  State<BodyOfSplashView> createState() => _BodyOfSplashViewState();
}

class _BodyOfSplashViewState extends State<BodyOfSplashView>
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
    return Future.delayed(const Duration(seconds: 2), () {
      // Get.off(
      //   () => HomeView(),
      //   transition:
      //       Transition.rightToLeftWithFade,
      //   duration:
      //       MyConstants.kTransitionDuration,
      // );
      GoRouter.of(
        // ignore: use_build_context_synchronously
        context,
      ).go(MyRoutes.homeViewRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(MyAssets.booklyLogo),
        SplashSlideAnimationText(slideAnimation: slideAnimation),
      ],
    );
  }
}
