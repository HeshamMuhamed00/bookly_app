import 'package:bookly_app/Features/home/view/widget/best_seller_item.dart';
import 'package:bookly_app/Features/home/view/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/view/widget/custom_best_seller_text.dart';
import 'package:bookly_app/Features/home/view/widget/list_view_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        ListViewBody(),
        SizedBox(
          height: 32,
        ),
        CustomBestSellerText(),
        SizedBox(
          height: 16,
        ),
        BestSellerItem(),
      ],
    );
  }
}
