import 'package:bookly_app/Features/home/view/widget/book_details_button.dart';
import 'package:bookly_app/Features/home/view/widget/book_details_item.dart';
import 'package:bookly_app/Features/home/view/widget/book_rating.dart';
import 'package:bookly_app/Features/home/view/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/view/widget/similer_book_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
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
        SizedBox(
          height: 10,
        ),
        Text(
          'The Black Book',
          style: Styles.style30,
        ),
        SizedBox(height: 4),
        Text(
          'Rudyard Kipling',
          style: Styles.style20,
        ),
        SizedBox(
          height: 4,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 20,
        ),
        BookDetailsButton(),
        SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              'You Can Also Like',
              style: Styles.style16,
              textAlign: TextAlign.start,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        SimilerBooksListView(),
      ],
    );
  }
}
