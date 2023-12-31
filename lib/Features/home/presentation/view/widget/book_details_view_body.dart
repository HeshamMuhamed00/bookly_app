import 'package:bookly_app/Features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/book_details_button.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/book_details_item.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/similer_book_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          icon: FontAwesomeIcons.cartShopping,
        ),
        BookDetailsItem(
          bookModel: bookModel,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          bookModel.volumeInfo.title.toString(),
          style: Styles.style30,
        ),
        const SizedBox(height: 4),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.style20,
        ),
        const SizedBox(
          height: 4,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const BookDetailsButton(),
        const SizedBox(
          height: 50,
        ),
        const Align(
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
        const SizedBox(
          height: 24,
        ),
        const SimilerBooksListView(),
      ],
    );
  }
}
