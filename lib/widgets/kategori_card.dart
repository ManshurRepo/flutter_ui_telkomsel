import 'package:flutter/material.dart';

class KategoriCard extends StatelessWidget {
  const KategoriCard({super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          height: 53,
          width: 53,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow.shade50,
          ),
          child: Image.asset(
            'assets/icons/$icon.png',
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
