import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4/6,
      child: Container(
        width: 50,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetData.test_image1),
          ),
        ),
      ),
    );
  }
}
