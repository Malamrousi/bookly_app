import 'package:bookly_app/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.3,

      child: ListView.builder(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: ListViewItem(),
        );
      }),
    );
  }
}
