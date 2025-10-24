import 'package:bookly/Core/errors/my_failure.dart';
import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Core/utils/constants.dart';
import 'package:bookly/Features/Home/data/models/book_model.dart';
import 'package:bookly/Features/Home/data/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<MyFailure, List<BookModel>>>
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
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<MyFailure, List<BookModel>>>
  featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }
}
