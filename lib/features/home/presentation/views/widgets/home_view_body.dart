import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';
import 'best_seller_list_vew_item.dart';
import 'custom_app_bar.dart';
import 'features_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturesBooksListView(),
          SizedBox(height: 50,),
          Text('Best Seller' ,
          style: AppStyles.titleMedium,),
          BestSellerListVewItem()

        ],
      ),
    );
  }
}