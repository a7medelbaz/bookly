import 'package:bookly/Features/Splash/presentation/widgets/body_of_splash_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyOfSplashView(),
    );
  }
}
