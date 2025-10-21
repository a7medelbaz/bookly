import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_card.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/selected_book_details.dart';
import 'package:flutter/material.dart';

class BodyOfBookDetailsView
    extends StatelessWidget {
  const BodyOfBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(
      context,
    ).size.width;
    return Column(
      children: [
        SizedBox(height: 35),
        CustomBookCard(
          aspectRatio: 2.7 / 2,
          borderCircularRadius: 18,
          horizontalPadding: width * .25,
        ),
        SizedBox(height: 35),
        SelectedBookDetails(),
      ],
    );
  }
}
