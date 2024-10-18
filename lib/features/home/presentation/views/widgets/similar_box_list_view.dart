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
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: CustomBookImage(
                      imageUrl:
                          'https://www.interviewbit.com/blog/wp-content/uploads/2022/02/Data-Structures-And-Algorithms-Made-Easy-380x491.jpg',
                    ),
                  );
                });
          } else if (state is SimilarBookFailure) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return const Center(child:  CustomLoadingIndicator());
          }
        },
      ),
    );
  }
}
