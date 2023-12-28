import 'package:bookly_app/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widget/custom_loding_indecator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.imageNewsetUrl});
  final String imageNewsetUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: CachedNetworkImage(
                    placeholder: (context, url) =>
                        const Center(child: CustomLodingIndecator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error_sharp),
                    fit: BoxFit.fill,
                    imageUrl: imageNewsetUrl,
                  )),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: Styles.style20.copyWith(fontFamily: kGtSectraFine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K Rowling',
                  style: Styles.style14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style:
                          Styles.style20.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
