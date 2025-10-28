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
    return await featchYourBooks(
      endPoint: MyUrlConstants.bestSellerEndPoint,
    );
  }
  @override
  Future<Either<MyFailure, List<BookModel>>>
  featchGeneraleBooks() async {
    return await featchYourBooks(
      endPoint:
          MyUrlConstants.generalBooksEndPoint,
    );
  }



  Future<Either<MyFailure, List<BookModel>>>
  featchYourBooks({required endPoint}) async {
    try {
      List<dynamic> listOfYourBooks =
          await apiService.get(
            endPoint: endPoint,
            token: MyUrlConstants.myBookToken,
          );
      return right(
        listOfYourBooks
            // Iterable of maps of listOfYourBooks
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
