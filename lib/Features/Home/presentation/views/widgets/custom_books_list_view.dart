import 'package:bookly/Core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBooksListView
    extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                MyAssets.testImage,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
        ),
      ),
    );
  }
}
