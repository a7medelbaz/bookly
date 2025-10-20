import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_book_card.dart';
import 'package:flutter/material.dart';

class BestSellerBookBuilder
    extends StatelessWidget {
  const BestSellerBookBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 3,
        itemBuilder: (context, index) {
          return BestSellerBookCard();
        },
      ),
    );
  }
}
