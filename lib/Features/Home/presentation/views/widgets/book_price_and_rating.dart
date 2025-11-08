import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';

class BookPriceAndRating extends StatelessWidget {
  final BookModel bookModel;
  const BookPriceAndRating({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('19.99 €', style: MyStyles.textStyle18),
        Spacer(),
        Row(
          children: [
            Icon(Icons.star_rounded, color: Colors.yellow, size: 18),
            Text(bookModel.volumeInfo!.averageRating.toString(), style: MyStyles.textStyle16),
            SizedBox(width: 9),
            Text(
              bookModel.volumeInfo!.ratingsCount.toString(),
              style: MyStyles.textStyle14,
            ),
          ],
        ),
      ],
    );
  }
}
