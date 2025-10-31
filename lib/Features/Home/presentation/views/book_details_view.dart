import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/body_of_book_details_view.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SafeArea(child: BodyOfBookDetailsView()),
    );
  }
}
