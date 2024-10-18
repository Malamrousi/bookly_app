import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 33),
         Text(
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
         bookModel.volumeInfo.title!,
          style: AppStyles.textStyleCaveatFont30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
          bookModel.volumeInfo.authors?[0]??'Unknown',
            style: AppStyles.textStyleKFont20.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
