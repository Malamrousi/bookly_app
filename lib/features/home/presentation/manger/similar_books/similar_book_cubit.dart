import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBook(String categoryName) async {
    emit(SimilarBookLoading());

    var result = await homeRepo.fetchSimilarBook(categoryName: categoryName);

    result.fold((failure) {
      emit(SimilarBookFailure(errorMessage: failure.errorMessage));
    }, (similar) {
      emit(SimilarBookSuccess(book: similar));
    });
  }
}
