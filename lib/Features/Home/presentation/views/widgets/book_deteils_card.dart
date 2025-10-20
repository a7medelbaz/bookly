import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';
import 'book_price_and_rating.dart';

class BookDeteilsCard extends StatelessWidget {
  const BookDeteilsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          SizedBox(
            width:
                MediaQuery.of(
                  context,
                ).size.width *
                .5,
            child: Text(
              'A Dream of Spring - Game Of Thrones',
              style: MyStyles.textStyle20,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            'Gorge RR Martin',
            style: MyStyles.textStyle14,
          ),
          BookPriceAndRating(),
        ],
      ),
    );
  }
}
