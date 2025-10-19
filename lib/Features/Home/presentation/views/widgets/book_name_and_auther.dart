import 'package:flutter/material.dart';

class BookNameAndAuther extends StatelessWidget {
  const BookNameAndAuther({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'A Dream of Spring - Game Of Thrones',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
