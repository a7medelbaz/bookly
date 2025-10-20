import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPriceAndRating extends StatelessWidget {
  const BookPriceAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 €',
          style: MyStyles.textStyle18,
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.star_rounded,
              color: Colors.yellow,
              size: 18,
            ),
            Text(
              '4.8',
              style: MyStyles.textStyle16,
            ),
            SizedBox(width: 9),
            Text(
              '(9999)',
              style: MyStyles.textStyle14,
            ),
          ],
        ),
      ],
    );
  }
}
