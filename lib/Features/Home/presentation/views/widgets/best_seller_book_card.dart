import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import 'book_deteils_card.dart';
import 'custom_book_card.dart';

class BestSellerBookCard extends StatelessWidget {
  final BookModel bookModel;

  const BestSellerBookCard({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30,
        // bottom: 10,
      ),
      child: SizedBox(
        height: 115,
        child: Row(
          children: [
            CustomBookCard(
              imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
              horizontalPadding: 0,
              aspectRatio: 2.6 / 4,
              borderCircularRadius: 8,
            ),
            SizedBox(width: 30),
            BookDeteilsCard(bookModel: bookModel),
          ],
        ),
      ),
    );
  }
}
