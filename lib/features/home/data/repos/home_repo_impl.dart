import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl({
    required this.apiServices,
  });
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBox() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBox() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?q=subject:programming&filterting=free-ebooks');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBook(
      {required String categoryName}) async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science&orderBy=relevance');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
