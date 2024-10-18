import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBook() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchNewestBox();

    result.fold((failure) {
      emit(NewestBooksFailure(errorMessage: failure.errorMessage));
    }, (book) {
      emit(NewestBooksSuccess(book: book));
    });
  }
}
