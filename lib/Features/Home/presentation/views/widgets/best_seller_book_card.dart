import 'package:flutter/material.dart';

import 'book_deteils_card.dart';
import 'custom_book_card.dart';

class BestSellerBookCard extends StatelessWidget {
      final String imageUrl;

  const BestSellerBookCard({super.key, required this.imageUrl});

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
              imageUrl: 'https://georgerrmartin.com/notablog/wp-content/uploads/2024/07/agameofthrones_2024_tr_repackage-678x1024.jpg',
              horizontalPadding: 0,
              aspectRatio: 2.6 / 4,
              borderCircularRadius: 8,
            ),
            SizedBox(width: 30),
            BookDeteilsCard(),
          ],
        ),
      ),
    );
  }
}
