import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'Free',
            fontColor: Colors.black,
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomButton(
            text: 'Free Preview',
            fontColor: Colors.white,
            color: Color(0xffD10000),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )
        ],
      ),
    );
  }
}
