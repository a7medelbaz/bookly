import 'package:bookly/Core/utils/constants.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/books_list_view_builder.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_abb_bar.dart';
import 'package:flutter/material.dart';

class BodyOfTheHomeView extends StatelessWidget {
  const BodyOfTheHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 40),
        BooksListViewBuilder(),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Best Sellers',
              style: TextStyle(
                fontFamily: MyAssets.kPrimaryFont,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}
