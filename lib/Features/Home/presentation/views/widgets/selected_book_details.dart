import 'package:flutter/material.dart';

import '../../../../../Core/utils/constants.dart';
import '../../../../../Core/utils/styles.dart';
import 'price_and_review_card.dart';

class SelectedBookDetails extends StatelessWidget {
  const SelectedBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text('The Songs of the Arabs', style: MyStyles.textStyle30),
        Text(
          'Ahmed Elbaz',
          style: MyStyles.textStyle18.copyWith(
            color: MyColors.autherNameColor,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star_rounded, color: Colors.yellow, size: 18),
            Text(
              '4.8',
              style: MyStyles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 9),
            Text('(9999)', style: MyStyles.textStyle14),
          ],
        ),
        SizedBox(height: 37),
        SizedBox(
          height: 50,
          width: width * .7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PriceAndReviewCard(
                containerText: '199.99 \$',
                containerColor: MyColors.priceContainerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              PriceAndReviewCard(
                containerText: 'free Review',
                containerColor: MyColors.reviewContainerColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
