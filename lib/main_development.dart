import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Core/utils/constants.dart';
import 'Features/Splash/presentation/views/splash_view.dart';

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            MyColors.kPrimaryColor,
        textTheme:
            GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
      ),
      home: SplashView(),
    );
  }
}

void main() {
  runApp(const Bookly());
}
