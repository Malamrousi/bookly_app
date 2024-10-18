import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookSellerListViewItem extends StatelessWidget {
  const BookSellerListViewItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(AppRouter.kBookDetailsView),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
            ),
   
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child:  Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                     book.volumeInfo.title!,
                      style: AppStyles.textStyleKCaveatFont20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                  book.volumeInfo.authors![0] ,
                    style: AppStyles.textStyleRegular14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Row(
                    children: [
                      const Text(
                        'free',
                        style: AppStyles.textStyleKFont20,
                      ),
                      const Spacer(),
                      BookRating(
                        rating: book.volumeInfo.averageRating?? 0,
                        count: book.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
