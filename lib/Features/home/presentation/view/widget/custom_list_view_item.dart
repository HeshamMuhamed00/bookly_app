import 'package:bookly_app/core/widget/custom_loding_indecator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            placeholder: (context, url) =>
                const Center(child: CustomLodingIndecator()),
            errorWidget: (context, url, error) =>
                const Icon(Icons.nearby_error_outlined),
            fit: BoxFit.fill,
            imageUrl: imageUrl,
          ),
        ),
      ),
    );
  }
}
