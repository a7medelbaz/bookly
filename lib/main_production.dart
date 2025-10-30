import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Core/utils/app_router.dart';
import 'Core/utils/constants.dart';

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: MyColors.kPrimaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: MyColors.kPrimaryColor,
          elevation: 0,
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
    );
  }
}

void main() {
  runApp(const Bookly());
}
