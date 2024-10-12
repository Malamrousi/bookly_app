import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 22,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.6',
          style: AppStyles.textStyleMedium16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: AppStyles.textStyleRegular14,
        )
      ],
    );
  }
}
