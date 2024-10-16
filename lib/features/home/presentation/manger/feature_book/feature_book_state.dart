part of 'feature_book_cubit.dart';

sealed class FeatureBookState extends Equatable {
  const FeatureBookState();

  @override
  List<Object> get props => [];
}

final class FeatureBookInitial extends FeatureBookState {}

final class FeatureBookLoading extends FeatureBookState {}

final class FeatureBookSuccess extends FeatureBookState {
  final List<BookModel> book;
  const FeatureBookSuccess({required this.book});
}

final class FeatureBookFailure extends FeatureBookState {
  final String errorMessage;

  const FeatureBookFailure({required this.errorMessage});
}
