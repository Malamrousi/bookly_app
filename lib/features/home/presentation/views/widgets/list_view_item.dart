import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.3,
      child: AspectRatio(
        aspectRatio: 3/4,
        child: Container(
          width: 50,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetData.test_image1),
            ),
          ),
        ),
      ),
    );
  }
}
