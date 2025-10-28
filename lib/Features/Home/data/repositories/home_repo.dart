import '../../../../Core/errors/my_failure.dart';
import '../models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // Feature Books
  Future<Either<MyFailure, List<BookModel>>>
  featchGeneraleBooks();
  // Best Seller Books
  Future<Either<MyFailure, List<BookModel>>>
  featchBestSellereBooks();
}
