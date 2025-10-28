part of 'general_books_cubit.dart';

sealed class GeneralBooksState extends Equatable {
  const GeneralBooksState();

  @override
  List<Object> get props => [];
}

final class GeneralBooksInitial
    extends GeneralBooksState {}

final class GeneralBooksLoading
    extends GeneralBooksState {}

final class GeneralBooksFailure
    extends GeneralBooksState {
  final String errorMassage;

  const GeneralBooksFailure({
    required this.errorMassage,
  });
}

final class GeneralBooksSuccess
    extends GeneralBooksState {
  final List<BookModel> books;

  const GeneralBooksSuccess({
    required this.books,
  });
}
