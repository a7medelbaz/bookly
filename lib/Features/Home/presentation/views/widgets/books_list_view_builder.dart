import 'custom_book_card.dart';
import 'package:flutter/material.dart';

class BooksListViewBuilder
    extends StatelessWidget {
  const BooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return CustomBookCard(
            borderCircularRadius: 20,
            aspectRatio: 3 / 4,
          );
        },
      ),
    );
  }
}
