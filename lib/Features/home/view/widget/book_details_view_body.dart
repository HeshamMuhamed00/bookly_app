import 'package:bookly_app/Features/home/view/widget/book_details_item.dart';
import 'package:bookly_app/Features/home/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          icon: FontAwesomeIcons.cartShopping,
        ),
        BookDetailsItem(),
      ],
    );
  }
}
