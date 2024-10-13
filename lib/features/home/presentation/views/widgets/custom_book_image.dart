import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.8/6,
      child: Container(
        width: 50,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetData.test_image1),
          ),
        ),
      ),
    );
  }
}
