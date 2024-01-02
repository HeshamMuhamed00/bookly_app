import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.borderRadius,
    this.fontColor,
    this.onPressed,
  });
  final String text;
  final Color? color, fontColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius!,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.style20
              .copyWith(fontWeight: FontWeight.w900, color: fontColor),
        ),
      ),
    );
  }
}
