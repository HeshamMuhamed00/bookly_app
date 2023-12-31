import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          '4.8',
          style: Styles.style16,
        ),
        SizedBox(
          width: 7,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(2435)',
            style: Styles.style14,
          ),
        ),
      ],
    );
  }
}
