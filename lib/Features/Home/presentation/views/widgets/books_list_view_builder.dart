import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/Home/presentation/logic/general_books_cubit/general_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_card.dart';

class BooksListViewBuilder extends StatelessWidget {
  const BooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralBooksCubit, GeneralBooksState>(
      builder: (context, state) {
        if (state is GeneralBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return CustomBookCard(
                  horizontalPadding: 15,
                  borderCircularRadius: 20,
                  aspectRatio: 3 / 4,
                );
              },
            ),
          );
        } else if (state is GeneralBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMassage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
