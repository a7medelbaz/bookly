import 'package:bookly/Features/Home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:flutter/material.dart';

class BooksListViewBuilder
    extends StatelessWidget {
  const BooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomBooksListView();
        },
      ),
    );
  }
}
