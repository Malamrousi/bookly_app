import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'box_action.dart';
import 'similar_box_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                 CustomBookDetailsAppBar(),
                 SizedBox(
                  height: 12,
                ),
               BookDetailsSection(),
                  Expanded(
                  child:  SizedBox(
                    height: 37,
                  ),
                ),
                 BoxAction(),
                 SizedBox(
                  height: 30,
                ),
                SimilarBoxSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
