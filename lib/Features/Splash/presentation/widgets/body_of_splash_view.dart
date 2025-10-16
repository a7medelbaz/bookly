import 'package:bookly/Core/utils/constants.dart';
import 'package:flutter/material.dart';

class BodyOfSplashView extends StatelessWidget {
  const BodyOfSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          CrossAxisAlignment.stretch,
      children: [
        Image.asset(MyAssets.booklyLogo),
        const Center(
          child: Text(
            'Read Free Books',
            style: TextStyle(
              fontFamily: MyAssets.kPrimaryFont,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
