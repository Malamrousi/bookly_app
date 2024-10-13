import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
       this.borderRadius});

  final Color backgroundColor;
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12)),
          ),
          child: Text(
            text,
            style: AppStyles.textStyleMedium16
                .copyWith(color:textColor, fontWeight: FontWeight.bold),
          )),
    );
  }
}
