part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> book;

 const SimilarBookSuccess({required this.book});
}

final class SimilarBookLoading extends SimilarBookState {}

final class SimilarBookFailure extends SimilarBookState {
  final String errorMessage;

  const SimilarBookFailure({required this.errorMessage});
}
