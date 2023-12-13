import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 240,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc2JOwcEiV5l__x-gG8bVr5EIYBbB4v1C_ig&usqp=CAU'),
          ),
        ),
      ),
    );
  }
}
