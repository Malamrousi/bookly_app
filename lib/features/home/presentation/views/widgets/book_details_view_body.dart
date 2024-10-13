import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'book_item.dart';
import 'box_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .23),
            child: const BookImageItem(),
          ),
          const SizedBox(height: 33),
          const Text(
            'The Jungle Book',
            style: AppStyles.textStyleCaveatFont30,
          ),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'RudYard Book',
              style: AppStyles.textStyleKFont20.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BoxAction()
        ],
      ),
    );
  }
}
