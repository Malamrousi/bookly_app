import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment.start} );
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
         const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
         const SizedBox(
          width: 6.3,
        ),
         Text(
          '4.6',
          style: AppStyles.textStyleMedium16.copyWith(
            fontWeight: FontWeight.w700
          ),
        ),
         const SizedBox(
          width: 5,
        ),
        const Opacity(
          opacity: .5,
          child: Text(
            '(245)',
            style: AppStyles.textStyleRegular14
          ),
        )
      ],
    );
  }
}
