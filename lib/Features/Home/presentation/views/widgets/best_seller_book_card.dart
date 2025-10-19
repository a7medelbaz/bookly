import 'book_deteils_card.dart';
import 'custom_book_card.dart';
import 'package:flutter/material.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30,
        bottom: 20,
      ),
      child: SizedBox(
        height: 115,
        child: Row(
          children: [
            CustomBookCard(
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
