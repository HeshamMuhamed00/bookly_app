import 'package:bookly_app/Features/home/view/widget/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const BestSellerItem();
            }),
      ),
    );
  }
}
