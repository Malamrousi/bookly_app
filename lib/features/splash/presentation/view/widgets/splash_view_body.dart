import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetData.logo,
          width: 250,
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Read free Books',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16
          ),
        )
      ],
    );
  }
}
