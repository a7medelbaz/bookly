import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_card.dart';
import 'package:flutter/material.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          CustomBookCard(
            aspectRatio: 3.3 / 4,
            borderCircularRadius: 8,
          ),
        ],
      ),
    );
  }
}
