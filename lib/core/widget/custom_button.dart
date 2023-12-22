import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.borderRadius,
    this.fontColor,
  });
  final String text;
  final Color? color, fontColor;
  final BorderRadiusGeometry? borderRadius;

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
        onPressed: () {},
        child: Text(
          text,
          style: Styles.style20
              .copyWith(fontWeight: FontWeight.w900, color: fontColor),
        ),
      ),
    );
  }
}
