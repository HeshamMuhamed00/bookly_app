import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon});
  final IconData icon;
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
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 10),
            child: Icon(icon),
          ),
        ],
      ),
    );
  }
}
