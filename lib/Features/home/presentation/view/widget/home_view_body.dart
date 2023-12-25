import 'package:bookly_app/Features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/custom_best_seller_text.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/list_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                icon: FontAwesomeIcons.magnifyingGlass,
              ),
              ListViewBody(),
              SizedBox(
                height: 32,
              ),
              CustomBestSellerText(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
