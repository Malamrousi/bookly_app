import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_text_filed.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_result.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFiled(),
             SizedBox(height: 16,),
          Text(
            'Search Result',
            style: AppStyles.textStyleSemiBold18,
          ),
           SizedBox(height: 16,),
          Expanded(child: SearchResult())
        ],
      ),
    );
  }

}
