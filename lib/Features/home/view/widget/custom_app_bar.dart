import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          SizedBox(
            height: 130,
            width: 130,
            child: Image.asset('assets/Bookly-logo.png'),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 30, bottom: 10),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
