import 'package:flutter/material.dart';

class FiturCard extends StatelessWidget {
  const FiturCard({
    super.key,
    required this.fitur,
    required this.title,
  });
  final String fitur;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 132,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 2,
              offset: const Offset(1, 2))
        ],
      ),
      child: Column(
        children: [
          Image.asset('assets/images/$fitur.png'),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
