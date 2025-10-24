import 'package:bookly/Core/errors/my_failure.dart';
import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // Feature Books
  Future<Either<MyFailure, BookModel>>
  featchFeatureBooks();
  // Best Seller Books
  Future<Either<MyFailure, BookModel>>
  featchBestSellereBooks();
}
