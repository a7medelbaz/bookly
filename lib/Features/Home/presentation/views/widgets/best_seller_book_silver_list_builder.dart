import 'package:bookly/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_book_card.dart';

class BestSellerBookSilverListBuilder extends StatelessWidget {
  const BestSellerBookSilverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 2, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(MyRoutes.bookDetailsViewRoute);
            },
            child: BestSellerBookCard(imageUrl: 'https://georgerrmartin.com/notablog/wp-content/uploads/2024/07/agameofthrones_2024_tr_repackage-678x1024.jpg',),
          ),
        );
      }),
    );
  }
}
