import 'package:bookly/Core/errors/my_failure.dart';
import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:bookly/Features/Home/data/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<MyFailure, BookModel>>
  featchBestSellereBooks() {
    // TODO: implement featchBestSellereBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<MyFailure, BookModel>>
  featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }
}
