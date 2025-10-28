import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:bookly/Features/Home/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit
    extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo)
    : super(BestSellerBooksInitial());
  final HomeRepo homeRepo;

  Future featchBestSellerlBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo
        .featchBestSellereBooks();

    result.fold(
      (failure) {
        emit(
          BestSellerBooksFailure(
            errorMassage: failure.errorMassage,
          ),
        );
      },
      (myBooks) {
        emit(
          BestSellerBooksSuccess(books: myBooks),
        );
      },
    );
  }
}
