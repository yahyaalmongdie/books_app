import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onPressed,
      required this.textColor,
      required this.btColor,
      required this.btText,
      required this.borderRadius,
      this.fontSize = 18});

  final void Function()? onPressed;
  final Color textColor;
  final Color btColor;
  final String btText;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      color: btColor,
      shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(12)),
      onPressed: onPressed,
      child: Text(
        btText,
        style: Styles.textStyle18.copyWith(
            color: textColor, fontWeight: FontWeight.w900, fontSize: fontSize),
      ),
    );
  }
}
