import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7, top: 35),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/Bookly-logo.png',
              height: 100,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
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
