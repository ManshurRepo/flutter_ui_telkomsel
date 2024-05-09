// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNav extends StatelessWidget {
  const ItemNav({
    super.key,
    required this.isActive,
    required this.icon,
    required this.title,
  });

  final bool isActive;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          (isActive == true)
              ? 'assets/icons/$icon-filled.png'
              : 'assets/icons/$icon.png',
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
              color: (isActive == true)
                  ? const Color(0xffEC2028)
                  : const Color(0xff747D8C),
              fontSize: 10),
        ),
      ],
    );
  }
}
