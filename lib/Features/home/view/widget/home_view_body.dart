import 'package:bookly_app/Features/home/view/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/view/widget/list_view_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        ListViewBody(),
      ],
    );
  }
}
