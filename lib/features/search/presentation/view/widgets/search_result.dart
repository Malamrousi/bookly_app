import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_vew_item.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 10),
            // child: BookSellerListViewItem(),
            child: Text('data'),
          );
        });
  }
}
