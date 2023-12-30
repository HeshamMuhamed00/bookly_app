import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBestSellerText extends StatelessWidget {
  const CustomBestSellerText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Newset Books',
        style: Styles.style18,
      ),
    );
  }
}
