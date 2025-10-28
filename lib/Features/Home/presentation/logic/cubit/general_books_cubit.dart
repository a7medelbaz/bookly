import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'general_books_state.dart';

class GeneralBooksCubit extends Cubit<GeneralBooksState> {
  GeneralBooksCubit() : super(GeneralBooksInitial());
}
