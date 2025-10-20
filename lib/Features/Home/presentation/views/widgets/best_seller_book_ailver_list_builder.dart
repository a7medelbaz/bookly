import 'best_seller_book_card.dart';
import 'package:flutter/material.dart';

class BestSellerBookAilverListBuilder
    extends StatelessWidget {
  const BestSellerBookAilverListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 2,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: BestSellerBookCard(),
          );
        },
      ),
    );
  }
}
