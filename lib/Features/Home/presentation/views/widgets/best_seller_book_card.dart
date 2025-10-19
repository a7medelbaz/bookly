import 'book_name_and_auther.dart';
import 'custom_book_card.dart';
import 'package:flutter/material.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 51,
      ),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookCard(
              horizontalPadding: 0,
              aspectRatio: 2.8 / 4,
              borderCircularRadius: 8,
            ),
            SizedBox(width: 30),
            BookNameAndAuther(),
          ],
        ),
      ),
    );
  }
}
