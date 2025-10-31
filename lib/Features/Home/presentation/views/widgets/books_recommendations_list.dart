import 'package:bookly/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_card.dart';

class BooksRecommendationsList extends StatelessWidget {
  const BooksRecommendationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(MyRoutes.bookDetailsViewRoute);
            },
            child: CustomBookCard(
              imageUrl: 'https://georgerrmartin.com/notablog/wp-content/uploads/2024/07/agameofthrones_2024_tr_repackage-678x1024.jpg',
              aspectRatio: 2 / 3,
              borderCircularRadius: 20,
              horizontalPadding: 0,
            ),
          ),
        );
      },
    );
  }
}
