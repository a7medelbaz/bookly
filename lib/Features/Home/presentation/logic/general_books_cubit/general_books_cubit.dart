import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repositories/home_repo.dart';

part 'general_books_state.dart';

class GeneralBooksCubit extends Cubit<GeneralBooksState> {
  GeneralBooksCubit({required this.homeRepo}) : super(GeneralBooksInitial());
  final HomeRepo homeRepo;

  Future featchGeneralBooks() async {
    emit(GeneralBooksLoading());
    var result = await homeRepo.featchGeneraleBooks();

    result.fold(
      (failure) {
        emit(GeneralBooksFailure(errorMassage: failure.errorMassage));
      },
      (myBooks) {
        emit(GeneralBooksSuccess(books: myBooks));
      },
    );
  }
}
