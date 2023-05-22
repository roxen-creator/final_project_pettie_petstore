import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.txtTheme,
    required this.title,
  });
  final String title;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(title, style: txtTheme.displayLarge)),
    );
  }
}
