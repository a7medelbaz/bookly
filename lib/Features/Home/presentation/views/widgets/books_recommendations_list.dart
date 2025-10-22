import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_card.dart';
import 'package:flutter/material.dart';

class BooksRecommendationsList
    extends StatelessWidget {
  const BooksRecommendationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 10.0,
          ),
          child: CustomBookCard(
            aspectRatio: 2 / 3,
            borderCircularRadius: 20,
            horizontalPadding: 0,
          ),
        );
      },
    );
  }
}
