import 'package:bookly_app/features/home/presentation/views/widgets/similar_box_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';

class SimilarBoxSection extends StatelessWidget {
  const SimilarBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like',
            style: AppStyles.textStyleSemiBold18
                .copyWith(fontStyle: FontStyle.italic)),
        const SizedBox(
          height: 16,
        ),
        const SimilarBoxListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
