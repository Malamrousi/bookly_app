import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: const CustomBookImage(
            imageUrl: 'https://www.interviewbit.com/blog/wp-content/uploads/2022/02/Data-Structures-And-Algorithms-Made-Easy-380x491.jpg',
          ),
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
         BookRating(
          rating: 5 ,
          count: 110,
          mainAxisAlignment: MainAxisAlignment.center,
        ),

      ],
    );
  }
}
