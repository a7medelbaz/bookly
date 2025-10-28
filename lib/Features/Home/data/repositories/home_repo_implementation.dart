import 'package:bookly/Core/errors/my_failure.dart';
import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Core/utils/constants.dart';
import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:bookly/Features/Home/data/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<MyFailure, List<BookModel>>>
  // in this api there is no best seller books so i used newestbooks as best seller
  featchBestSellereBooks() async {
    try {
      List<dynamic> listOfBestSellerBooks =
          await apiService.get(
            endPoint:
                MyUrlConstants.bestSellerEndPoint,
            token: MyUrlConstants.myBookToken,
          );
      // List<BookModel> bestSellerBooks = [];
      return right(
        listOfBestSellerBooks
            // Iterable of maps of listOfBestSellerBooks
            .map(
              (book) => BookModel.fromJson(book),
            )
            .toList(),
      );
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMassage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<MyFailure, List<BookModel>>>
  featchFeatureBooks() async {
    try {
      List<dynamic> listOfBooks = await apiService
          .get(
            endPoint: MyUrlConstants
                .generalBooksEndPoint,
            token: MyUrlConstants.myBookToken,
          );
      // List<BookModel> bestSellerBooks = [];
      return right(
        listOfBooks
            // Iterable of maps of listOfBooks
            .map(
              (book) => BookModel.fromJson(book),
            )
            .toList(),
      );
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMassage: e.toString(),
          ),
        );
      }
    }
  }
}
