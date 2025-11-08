import 'package:bookly/Core/utils/constants.dart';
import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/Home/presentation/logic/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_book_card.dart';

class BestSellerBookSilverListBuilder extends StatelessWidget {
  const BestSellerBookSilverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 10, (
              context,
              index,
            ) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(
                      context,
                    ).push(MyRoutes.bookDetailsViewRoute);
                  },
                  child: BestSellerBookCard(bookModel: state.books[index]),
                ),
              );
            }),
          );
        } else if (state is BestSellerBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errorMassage),
          );
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
