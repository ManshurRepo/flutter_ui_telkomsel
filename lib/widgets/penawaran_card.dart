// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PenawaranCard extends StatelessWidget {
  const PenawaranCard({
    super.key,
    required this.penawaran,
    required this.title,
  });
  final String penawaran;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      width: 248,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 5,
            offset: const Offset(2, 2),
            color: Colors.grey.shade200)
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/$penawaran.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
