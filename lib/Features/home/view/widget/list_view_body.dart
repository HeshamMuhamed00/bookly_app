import 'package:bookly_app/Features/home/view/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class ListViewBody extends StatelessWidget {
  const ListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomListViewItem();
      },
    );
  }
}
