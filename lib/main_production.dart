import 'package:bookly/Core/utils/constants.dart';
import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            MyColors.kPrimaryColor,
      ),
      home: SplashView(),
    );
  }
}

void main() {
  runApp(const Bookly());
}
