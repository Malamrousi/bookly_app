import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_Indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .17,
      child: BlocBuilder<SimilarBookCubit, SimilarBookState>(
        builder: (context, state) {
          if (state is SimilarBookSuccess) {
            return ListView.builder(
                itemCount: state.book.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 5),
                    child: CustomBookImage(
                        imageUrl: state
                                .book[index].volumeInfo.imageLinks?.thumbnail ??
                            ''),
                  );
                });
          } else if (state is SimilarBookFailure) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return const Center(child: CustomLoadingIndicator());
          }
        },
      ),
    );
  }
}
