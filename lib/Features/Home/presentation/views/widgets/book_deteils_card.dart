import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/constants.dart';
import '../../../../../Core/utils/styles.dart';
import 'book_price_and_rating.dart';

class BookDeteilsCard extends StatelessWidget {
  final BookModel bookModel;
  const BookDeteilsCard({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(MyRoutes.bookDetailsViewRoute);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                bookModel.volumeInfo!.title!,
                style: MyStyles.textStyle20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              (bookModel.volumeInfo?.authors ?? []).join(', '),
              style: MyStyles.textStyle14,
            ),
            BookPriceAndRating(),
          ],
        ),
      ),
    );
  }
}
