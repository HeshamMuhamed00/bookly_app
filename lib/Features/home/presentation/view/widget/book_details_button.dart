import 'package:bookly_app/Features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomButton(
            text: 'Free',
            fontColor: Colors.black,
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomButton(
            onPressed: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            text: getText(bookModel),
            fontColor: Colors.white,
            color: const Color(0xffD10000),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avalible';
    } else {
      return 'Preview';
    }
  }
}
