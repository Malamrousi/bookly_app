import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class BestSellerListVewItem extends StatelessWidget {
  const BestSellerListVewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetData.test_image2),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: const Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Harry Potter and the Goblet of Fire',
                  style: AppStyles.textStyleKCaveatFont20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
