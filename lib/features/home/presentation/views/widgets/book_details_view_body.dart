import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'book_item.dart';

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
          const SizedBox(height: 32,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const BookImageItem(),
          ),
          const SizedBox(height: 43,),
          const Text('The Jungle Book'  ,
          style: AppStyles.textStyleKCaveatfont30,) ,

          const SizedBox(height: 4,),

          Opacity(
            opacity: .7,
            child: Text('RudYard Book'  ,
              style: AppStyles.textStyleKFont20.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400
              ),),
          ) ,
        ],
      ),
    );
  }
}
