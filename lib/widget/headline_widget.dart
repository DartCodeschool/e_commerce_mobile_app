import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const HeadlineWidget({
    super.key, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87)),
        Text(subtitle, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54)),
      ],
    );
  }
}
