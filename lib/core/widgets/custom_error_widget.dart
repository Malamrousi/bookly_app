import 'package:flutter/material.dart';

import '../utils/styels.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(  
        textAlign: TextAlign.center,
        errorMessage ,
      style:AppStyles.textStyleCaveatFont30 ,),
    );
  }
}
