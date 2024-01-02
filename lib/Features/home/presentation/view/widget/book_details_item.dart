import 'package:bookly_app/Features/home/Data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(bookModel.volumeInfo.imageLinks.thumbnail),
          ),
        ),
      ),
    );
  }
}
